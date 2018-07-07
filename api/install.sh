#!/usr/bin/env bash
if [ ! -f install.sh ]; then
    echo 'install.sh must be run within its container folder' 1>&2
    exit 1
fi

go clean all

CURDIR=`pwd`
OLDGOPATH="$GOPATH"
export GOPATH="$CURDIR"
gofmt -w src
go install romanNumerals
if [ -f bin/romanserver ]; then
    rm bin/romanserver
fi
go install romanserver
export GOPATH="$OLDGOPATH"
echo 'finished'
