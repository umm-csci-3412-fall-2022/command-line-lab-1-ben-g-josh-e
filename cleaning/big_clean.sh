#!/bin/bash

homedir=$(pwd)
dirname="$1"
tempdir=$(mktemp -d)

tar --directory="$tempdir" -xzf "$homedir/$dirname" #navigate and extract into temporary directory
cd "$tempdir" || exit


grep -lre "DELETE ME!" | xargs rm
tar -czf "$homedir/cleaned_$dirname" -- *

cd "$homedir" || exit


