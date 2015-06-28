#!/bin/bash

for d in $(find . -type d -maxdepth 1 -mindepth 1); do
    if [ -f $d/desc ]; then
        echo "$d: $(cat $d/desc)"
    fi
done

