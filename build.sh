#!/bin/bash
# Usage: "./build.sh <filename_without_extension>"
# Run with: "bin/<filename_without_extension>"
# Example: `./build.sh test && bin/test`

# Variables for paths
INCLUDE_PATH="./libcs50/build/include"
LIBRARY_FILE="./libcs50/build/lib/libcs50.a"
SOURCE_FILE="$1.c"
OUTPUT_FILE="bin/$1"

# Create bin directory if it doesn't exist
mkdir -p bin
cc -o "$OUTPUT_FILE" "$SOURCE_FILE" -I"$INCLUDE_PATH" "$LIBRARY_FILE"
