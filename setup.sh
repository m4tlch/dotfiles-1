#!/bin/sh

BASEDIR=$(dirname $0)

# SETUP VIM

VIMDIR=$BASEDIR/vim

rm ~/.vim
ln -s $VIMDIR ~/.vim

rm ~/.vimrc
ln -s $VIMDIR/vimrc ~/.vimrc

# SETUP BASH

BASHDIR=$BASEDIR/bash

rm ~/.bashrc
ln -s $BASHDIR/bashrc ~/.bashrc

# SETUP GIT

GITDIR=$BASEDIR/git

rm ~/.gitconfig
ln -s $GITDIR/gitconfig ~/.gitconfig

rm ~/.gitignore
ln -s $GITDIR/gitignore ~/.gitignore
