#!/bin/sh

# Check if a droplog file exists, indicating a previous install attempt failed.
if [ -e .droplog ]; then
  echo A file called .droplog already exists in this directory. If you need \
    the information therein for debugging, save it somewhere else and delete \
    the file before running dropship again.
  exit
fi

# Detect OS
OS=$(./osdetect.sh)
echo "Operating system: $OS"

# Select a bootstrapper, then run it.
BOOTSTRAP=$(./bootstrapselector.sh $OS)
$BOOTSTRAP

rm .droplog
echo You have been dropped in. Good luck.
