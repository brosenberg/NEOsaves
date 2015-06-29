#!/bin/bash

set -e
set -o pipefail


# Change this to your appropriate directory
SAVE_DIR="/Users/brosenberg/Library/Preferences/Macromedia/Flash Player/#SharedObjects/3P2ZYSJC/localhost"
TS=$(stat -f %m "$SAVE_DIR/nsSGv1.sol")
OUTPUT_DIR="NEOsaves/$TS"



mkdir -p ~/$OUTPUT_DIR 2>/dev/null
cp "$SAVE_DIR/"*.sol ~/$OUTPUT_DIR
if [ ! -z "$1" ]; then
    echo "$1" >> ~/$OUTPUT_DIR/desc
fi

echo "Contents of $(ls -d ~/$OUTPUT_DIR):"
ls ~/$OUTPUT_DIR
