#!/bin/bash

homedir=$(pwd)
dirname="$1"
#tempdir=$(mktemp -d)
tempdir=/tmp/bob

tar --directory=$tempdir -xzf "$homedir/$dirname" #navigate and extract into temporary directory
basename -s .tgz $dirname | xargs grep -Le "DELETE ME!" | xargs tar -czf "cleaned_$dirname" --directory=$homedir #tar files which do not contain "DELETE ME!" into the start location
#rm -r $tempdir

