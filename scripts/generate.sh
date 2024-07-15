#!/bin/sh

# if git diff --exit-code proto && [ -d gen ]; then
#   echo "No changes in proto directory"
#   exit 0
# fi

echo "Generating..."
/usr/local/bin/buf generate
echo "Done"

if [ -n $(git diff --exit-code gen) ]; then
  echo "Committing..."

  git config --global user.name "gRPC Bot"
  git config --global user.email "41898282+github-actions[bot]@users.noreply.github.com"

  git add gen
  git commit -n -m "Update generated files"
  git push
fi