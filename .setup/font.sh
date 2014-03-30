#!/bin/bash

echo "Installing fonts ..."

echo "UbuntuMono for powerline ..."

CDIR=`dirname $0`
HOME="$CDIR/../../"

if [ ! -d "$HOME/.local" ]; then
    mkdir $HOME/.local
fi
if [ ! -d "$HOME/.local/share" ]; then
    mkdir $HOME/.local/share
fi
if [ ! -d "$HOME/.local/share/fonts" ]; then
    mkdir $HOME/.local/share/fonts
fi

cp $CDIR/../font/UbuntuMono-R-Powerline $HOME/.local/share/fonts

echo "😄  done"
