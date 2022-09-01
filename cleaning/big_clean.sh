#!/bin/bash

homedir=$(pwd)
dirname="$1"
tempdir=$(mktemp -d)

tar --directory=$tempdir -xzf $dirname #navigate and extract into temporary directory
grep -Le "DELETE ME!" * | xargs tar -czf "cleaned_$dirname" --directory=$homedir #tar files which do not contain "DELETE ME!" into the start location
rm -r $tempdir

