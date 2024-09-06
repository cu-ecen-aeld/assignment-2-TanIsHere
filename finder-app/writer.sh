#!/bin/bash

#Author : Mr Tan

# Check for arguments
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required: <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2

# Create directory stripping file name to get path
mkdir -p "$(dirname "$writefile")"

# Write the string to file
echo "$writestr" > "$writefile"

# (returns 1) If the echo statement fails 
if [ $? -ne 0 ]; then
    echo "Error: Could not create or write to file $writefile"
    exit 1
fi

exit 0
