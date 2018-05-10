#!/bin/sh

# Add missing headers to md files (needed for jekyll)
/usr/share/jekyll-builder/add-md-headers.sh

# Compile md files to html files
bundle exec jekyll build \
        --config _config.yml \
        --source /usr/share/jekyll-builder/source \
        --destination /usr/share/jekyll-builder/output

# Replace permalinks with .md extension to have a .html extension
/usr/share/jekyll-builder/md-path-replace.sh