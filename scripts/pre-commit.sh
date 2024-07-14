#!/bin/sh

echo "Running pre-commit hook"
/usr/local/bin/buf breaking --against '.git#branch=main'
if [ $? -ne 0 ]; then
  exit 1
fi
echo "Buf breaking check passed"
/usr/local/bin/buf lint
if [ $? -ne 0 ]; then
  exit 1
fi
echo "Buf lint check passed"
/usr/local/bin/buf format -w
if [ $? -ne 0 ]; then
  exit 1
fi
echo "Buf format check passed"