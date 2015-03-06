#!/bin/sh

# Remove old logs, if any.
rm -f .droplog

# Detect OS
OS=$(./osdetect.sh)
echo "Operating system: $OS"

# Select a bootstrapper, then run it.
BOOTSTRAP=$(./bootstrapselector.sh $OS)
$BOOTSTRAP

# Set PATH to Homebrew's bin. This has to happen at the top level.
# BUG: Every time you run dropship, the PMPATH keeps getting re-appended, so the PATH keeps expanding.
PMPATH=$(./setpath.sh $OS)
NEWPATH=$PMPATH:$PATH
PATH=$NEWPATH
echo "PATH=$NEWPATH" >> ~/.bash_profile

echo "Restart your shell session to complete installation."
