#!/bin/sh

# Use the GCC preprocessor on HTML files

cd src/
for file in *.html; do
    gcc -x c -E $file > ../docs/$file
done
