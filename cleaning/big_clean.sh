#!/bin/bash

homedir=pwd
dirname="$1"
tempdir=$(mktemp -d)

tar --directory=$tempdir -xzf $dirname

