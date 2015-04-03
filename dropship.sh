#!/bin/sh

# Detect OS
OS=$(./osdetect.sh)
echo "Operating system: $OS"

# Select a bootstrapper, then run it.
BOOTSTRAP=$(./bootstrapselector.sh $OS)
$BOOTSTRAP

rm .droplog
echo You have been dropped in. Good luck.
