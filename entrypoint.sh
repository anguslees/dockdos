#!/bin/sh

if [ -t 0 ]; then
    tty=-t
else
    tty=-td
fi

exec dosemu -q $tty ${1:+-E "$*"}
