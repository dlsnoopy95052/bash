#!/bin/bash

for file in $1/*; do
    if [[ -f $file ]]; then
        # Add a # to lines with "mirrorlist=http..."
        sed -i '/^mirrorlist=http*/s/^/#/' "$file"
        # Remove a # from baseurl and change mirror... to vault...
        sed -i 's/^#baseurl=http:\/\/mirror/baseurl=http:\/\/vault/' "$file"
    fi
done

