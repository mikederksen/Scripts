#!/bin/sh
/usr/share/jekyll-builder/md-header.sh

bundle exec jekyll build \
        --config _config.yml \
        --source /usr/share/jekyll-builder/source \
        --destination /usr/share/jekyll-builder/output