#!/bin/bash

homedir=$(pwd)
dirname="$1"
tempdir=$(mktemp -d)
#tempdir=/tmp/bob

tar --directory=$tempdir -xzf "$homedir/$dirname" #navigate and extract into temporary directory
cd "$tempdir"
#echo $(pwd)
#echo $(ls)
basename -s .tgz $dirname | xargs grep -Lre "DELETE ME!" | xargs tar -czf "cleaned_$dirname" #tar files which do not contain "DELETE ME!"
mv -t "$homedir" "cleaned_$dirname"
cd "$homedir"
#echo $(pwd)

#echo "$tempdir"
#rm -r $tempdir

