#!/bin/sh

if [ git diff --exit-code proto ] && [ -d gen ]; then
  echo "No changes in proto directory"
  exit 0
fi

echo "Generating..."
/usr/local/bin/buf generate
echo "Done"

if [ -n $(git diff --exit-code gen) ]; then
  echo "Committing..."

  user_name=$(git config user.name)
  git config user.name "gRPC Bot"

  git add .
  git commit -m "Update generated files"

  git config user.name $user_name
  echo "Done"
fi