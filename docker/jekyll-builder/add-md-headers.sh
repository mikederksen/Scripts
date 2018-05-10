#!/bin/sh

#ToDo: Copy files before replacing

find "$(pwd)" -type f -name "*.md" | while read fname; do
    if sed -n '1p' $fname | grep -q -e "^---$"; then
        echo $fname already contains header
    else
        echo $fname does not have a header. Adding it now...
        sed -i '1i---' $fname
        sed -i '1i---' $fname
    fi
done
