#!/bin/sh

if git diff --staged --exit-code proto >/dev/null 2>&1; then
  echo "No changes in proto directory"
  exit 0
fi

# echo "Running breaking check"
# /usr/local/bin/buf breaking --against '.git#branch=main'
# if [ $? -ne 0 ]; then
#   exit 1
# fi
# echo "Buf breaking check passed"

echo "Running lint and format check"
/usr/local/bin/buf lint
if [ $? -ne 0 ]; then
  exit 1
fi
echo "Buf lint check passed"
/usr/local/bin/buf format -w --exit-code
if [ $? -ne 0 ]; then
  exit 1
fi
echo "Buf format check passed"
