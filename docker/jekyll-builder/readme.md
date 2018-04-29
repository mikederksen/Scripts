# Instructions
Use `docker run` to build the markdown files into HTML files. The following command can be used:
```
docker run -v ~/Documents/git/NotesInfra/nginx-forwarder/md/source:/usr/share/jekyll-builder/source \
           -v ~/Documents/git/NotesInfra/nginx-forwarder/md/output:/usr/share/jekyll-builder/output \
           mdregistry.azurecr.io/jekyll-builder
```

## Md file ends up in output
It could happen that the .md file itself endsup in the output directory. This implies that the file header is missing or incorrect. Jekyll wants the following kind of header:
```
---
title: Title here
---
```

Other fields can also be used in there. This can be found on the Jekyll website
