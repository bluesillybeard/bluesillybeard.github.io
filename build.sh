#!/bin/sh

# Because I am already familiar with C macros, and they can save me a lot of duplication in my HTML files,
# I run my HTML through a C preprocessor (GCC)

# cd into the source directory
cd src/
for file in *.html; do
    # put it through the m4 macros
    m4 -Dfile=$file rules.m4 > ../docs/$file
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

