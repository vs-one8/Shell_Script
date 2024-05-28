#!/bin/bash
DIRECTORY="$1"
find "$DIRECTORY" -type f -size +500M -exec rm -f {} \;
echo "DELETED ALL FILES GREATER THAN 500M IN $DIRECTORY...."

