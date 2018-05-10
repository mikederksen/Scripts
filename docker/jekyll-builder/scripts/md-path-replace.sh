#!/bin/sh
find "$(pwd)" -type f -name "*.html" | while read fname; do
    sed -i -E "s/(<a href=\".+\.)md(\">)/\1html\2/" $fname
done