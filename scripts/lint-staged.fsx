#r "nuget: LibGit2Sharp, 0.30.0"

open System
open LibGit2Sharp

let consoleColor fc (format: string) =
  let current = Console.ForegroundColor
  Console.ForegroundColor <- fc
  Console.WriteLine(format)
  Console.ForegroundColor <- current

let bufCmd =
  match Environment.OSVersion.Platform with
  | PlatformID.Win32NT -> "./Tools/bin/buf.exe"
  | _ -> "./Tools/bin/buf"

let lintProto (files: string seq) =
  if files |> Seq.exists (fun x -> x.EndsWith(".proto")) |> not then
    Environment.Exit(0)

  printfn "🖋️  Linting proto files..."

  let proc =
    System.Diagnostics.Process.Start(
      bufCmd,
      Seq.append
        [ "lint"; "--config" ]
        (files
         |> Seq.filter (fun x -> x.EndsWith(".proto"))
         |> Seq.fold (fun acc x -> Seq.append acc [ "--path"; x ]) Seq.empty)
    )

  proc.WaitForExit()

  if proc.ExitCode = 0 |> not then
    consoleColor ConsoleColor.Red "🚫 Linting failed."
    Environment.Exit(1)

let formatProto (files: string seq) =
  if files |> Seq.exists (fun x -> x.EndsWith(".proto")) |> not then
    Environment.Exit(0)

  if files |> Seq.isEmpty then
    Environment.Exit(0)

  consoleColor ConsoleColor.Green "🧹 Formatting proto files..."

  let proc =
    System.Diagnostics.Process.Start(
      bufCmd,
      Seq.append
        [ "format"; "-w" ]
        (files
         |> Seq.filter (fun x -> x.EndsWith(".proto"))
         |> Seq.fold (fun acc x -> Seq.append acc [ "--path"; x ]) Seq.empty)
    )

  proc.WaitForExit()

  if proc.ExitCode = 0 |> not then
    consoleColor ConsoleColor.Red "🚫 Formatting failed."
    Environment.Exit(1)

[ EntryPointAttribute ]

let main =
  use repo = new Repository(Environment.CurrentDirectory)

  let stagedFiles =
    repo.Diff.Compare<TreeChanges>(repo.Head.Tip.Tree, DiffTargets.Index)
    |> Seq.map (fun change -> change.Path)

  lintProto stagedFiles
  formatProto stagedFiles
