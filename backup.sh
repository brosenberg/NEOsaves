#!/bin/bash

set -e
set -o pipefail

# Change this to your appropriate directory
SAVE_DIR="/Users/brosenberg/Library/Preferences/Macromedia/Flash Player/#SharedObjects/3P2ZYSJC/localhost"
TS=$(stat -f %m "$SAVE_DIR/nsSGv1.sol")
OUTPUT_DIR="NEOsaves/$TS"

mkdir -p ~/$OUTPUT_DIR 2>/dev/null
cd "$SAVE_DIR"
tar cf saves_$TS.tar ./*
mv saves_$TS.tar ~/$OUTPUT_DIR

echo "Contents of $(ls ~/$OUTPUT_DIR):"
echo
tar tf ~/$OUTPUT_DIR/saves_$TS.tar
