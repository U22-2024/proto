open System

let consoleColor fc (format: string) =
  let current = Console.ForegroundColor
  Console.ForegroundColor <- fc
  Console.WriteLine(format)
  Console.ForegroundColor <- current

let bufCmd =
  match Environment.OSVersion.Platform with
  | PlatformID.Win32NT -> "./Tools/bin/buf.exe"
  | _ -> "./Tools/bin/buf"

let lintProto () =
  printfn "🖋️  Linting proto files..."

  let proc = System.Diagnostics.Process.Start(bufCmd, [ "lint" ])

  proc.WaitForExit()

  if proc.ExitCode = 0 |> not then
    consoleColor ConsoleColor.Red "🚫 Linting failed."
    Environment.Exit(1)

let formatProto () =
  consoleColor ConsoleColor.Green "🧹 Formatting proto files..."

  let startInfo =
    new Diagnostics.ProcessStartInfo(bufCmd, [ "format"; "-w"; "--exit-code" ])

  // Windowsの場合のみ、PATHにGit for Windowsのパスを追加
  if Environment.OSVersion.Platform = PlatformID.Win32NT then
    let oldPath = startInfo.EnvironmentVariables.["PATH"]

    let pathList =
      oldPath.Split(';') |> Seq.append [ "C:\\Program Files\\Git\\usr\\bin" ]

    startInfo.EnvironmentVariables.["PATH"] <- String.Join(";", pathList)

  let proc = Diagnostics.Process.Start(startInfo)

  proc.WaitForExit()

  if proc.ExitCode = 0 |> not then
    consoleColor ConsoleColor.Red "🚫 Formatting failed."
    Environment.Exit(1)

[ EntryPointAttribute ]

let main =
  lintProto ()
  formatProto ()
