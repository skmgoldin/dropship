#!/bin/sh

# Remove old logs, if any.
rm .droplog

# Detect OS
OS=$(./osdetect.sh)
echo "Operating system: $OS"

# Select a bootstrapper, then run it.
BOOTSTRAP=$(./bootstrapselector.sh $OS)
$BOOTSTRAP

echo You have been dropped in. Good luck.
