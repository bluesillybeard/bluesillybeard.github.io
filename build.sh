#!/bin/sh

# Use the GCC preprocessor on HTML files

cd src/
for file in *.html; do
    # Put it through grep with a regular expression that removes the comments at the top of the file that the preprocessor emits.
    gcc -x c -E $file | grep -v -E "#.+" > ../docs/$file
done
