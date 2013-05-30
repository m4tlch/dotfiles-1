#!/bin/bash

export BASEDIR="$(dirname $0)"

mkdir ~/.fonts

sudo apt-get install python-fontforge

${BASEDIR}/vim/bundle/vim-powerline/fontpatcher/fontpatcher ${BASEDIR}/font/Inconsolata.ttf

mv Inconsolata.ttf.otf ~/.fonts

sudo fc-cache -vf
