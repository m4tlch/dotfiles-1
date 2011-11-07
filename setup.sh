#!/bin/sh

BASEDIR=$(dirname $0)

# SETUP VIM

VIMDIR=$BASEDIR/vim

ln -s $VIMDIR ~/.vim
ln -s $VIMDIR/vimrc ~/.vimrc

# SETUP BASH

BASHDIR=$BASEDIR/bash

ln -s $BASHDIR/bashrc ~/.bashrc

# SETUP GIT

GITDIR=$BASEDIR/git

ln -s $GITDIR/gitconfig ~/.gitconfig
ln -s $GITDIR/gitignore ~/.gitignore
