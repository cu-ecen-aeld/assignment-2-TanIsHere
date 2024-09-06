#!/bin/bash

# Check for arguments
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required: <filesdir> <searchstr>"
    exit 1
fi

filesdir=$1

searchstr=$2

# Directory check
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a directory, please try again"
    exit 1
fi

# Find all files in current directories 
num_of_files=$(find "$filesdir" -type f | wc -l)
# Search for string in files and return how many times the string occurs in the files
num_of_string_matches=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $num_of_files and the number of matching lines are $num_of_string_matches"

exit 0
