#!/bin/bash

echo "Installing zsh, please wait ..."

DIR=`dirname $0`
ZSH_PATH="$DIR/../../.zshrc"
ZSHRC="$DIR/../zshrc"

echo "zshrc ..."
if [ -f $ZSH_PATH ]
then
    rm $ZSH_PATH
fi
ln -s $ZSHRC $ZSH_PATH
echo "😄  done"
