#!/usr/bin/env bash

LAYOUT_FILE=~/oitofelix.github.io/_layouts/oitofelix-homepage.html

DIRS="gnu-philosophy
translation-stallman-speech-on-free-software
presentation-tls-libre-software
article-gpg-and-ssh-key-handling
article-savannah-cvs-to-git-migration
ports
ps2-linux
8f-userrpl-kernel
decimatrix-8086
terminal-matrix-8086
qdot-8086
elpa
mininim/mininim-gh-pages"

set -xe

for d in $DIRS; do
    cd ~/"$d"
    git checkout gh-pages || :
	  cp "$LAYOUT_FILE" _layouts
	  git add _layouts/oitofelix-homepage.html
	  git commit -m "Update layout to match top level one." && git push
done
