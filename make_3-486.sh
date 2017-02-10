#!/bin/sh
export CFLAGS="-march=i386 -mtune=i486 -Os -pipe"
make
if test -e distrib/libqdinp2.a
then
    echo 'Making distributable'
    tar -cvzf predist/qdinp2_3-486.tar.gz distrib/libqdinp2.a distrib/qdinp2.h
fi
