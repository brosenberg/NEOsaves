#!/bin/bash

for d in $(find . -type d -maxdepth 1 -mindepth 1|sed /\.git/d); do
    TS=$(date -r $(sed 's/^\.\///' <<< $d) '+%d %b %Y %T')
    if [ -f $d/desc ]; then
        DESC=$(cat $d/desc)
    else
        DESC="[No Description]"
    fi
    echo "$d: ($TS) $DESC"
done

