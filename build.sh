#!/bin/bash

rm -rf docs/*

# cd into the source directory
cd src/
for file in *.html; do
    # If it is an inc.html, skip it
    if [[ $file == *\.inc\.html ]]; #comment
    then
        continue;
    fi
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

