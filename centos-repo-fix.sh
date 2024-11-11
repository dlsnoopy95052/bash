#!/bin/bash

for file in $1/*; do
    if [[ -f $file ]]; then
        # Add a # to lines with "a=b.c.d"
        sed -i '/^mirrorlist=http*/s/^/#/' "$file"
        sed -i 's/^#baseurl=http:\/\/mirror/baseurl=http:\/\/vault/' "$file"
    fi
done

