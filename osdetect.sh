#!/bin/sh

OS=$(uname)

# Detect operating system
if [ "$OS" == "Darwin" ]; then
  echo "OSX"
#  ./osxbootstrap.sh

else
  echo Your operating system is not supported.

fi

