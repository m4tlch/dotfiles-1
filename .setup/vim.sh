#!/bin/bash
echo "Installing vim, please wait ..."

CDIR=`dirname $0`
VIMDIR=$CDIR/../.vim

ln -sd $CDIR/vim ~/.vim
ln -s $CDIR/vim/vimrs ~/.vimrc

echo "Bundles ..."
vim +BundleInstall +qall
echo "😄  done"
