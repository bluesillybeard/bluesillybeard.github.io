#!/bin/bash

# This compiles the website.
# Arguments to this file are passed into m4.

rm -rf docs/*

# cd into the source directory
cd src/
# Go through every file
for file in $(find -type f); do
    # If it is an inc.html, skip it
    if [[ $file == *\.inc\.html ]]; then continue;
    elif [[ $file == *\.html ]]; then
        # If it is an HTML file, put it through the m4 macros into the docs directory
        m4 -Dfile=$file $@ rules.m4 > ../docs/$file
    else
        # For anything else, just copy it over
        mkdir -p "../docs/$(dirname $file)"
        cp "$file" "../docs/$file"
    fi
done

# cd out of src for any more code I might add
cd ..

