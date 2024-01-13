#!/bin/sh

# Because I am already familiar with C macros, and they can save me a lot of duplication in my HTML files,
# I run my HTML through a C preprocessor (GCC)

# cd into the source directory
cd src/
for file in *.html; do
    # Put it through grep to removes the things at the top of the file that the preprocessor emits.
    gcc -x c -E $file | grep -v -E "^#" > ../docs/$file
done

# copy over images
for file in *.png; do
    cp "$file" ../docs/
done

# copy over the stylesheets too
for file in *.css; do
    cp "$file" ../docs/
done

# cd out of src for any more code I might add
cd ..

