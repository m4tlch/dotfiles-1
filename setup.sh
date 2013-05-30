#!/bin/sh

BASEDIR=`pwd`

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

rm ~/.bash_profile
ln -s $BASHDIR/bash_profile ~/.bash_profile

# SETUP TMUX

TMUXDIR=$BASEDIR/tmux

rm ~/.tmux.conf
ln -s $TMUXDIR/conf ~/.tmux.conf

# SETUP GIT

GITDIR=$BASEDIR/git

rm ~/.gitconfig
ln -s $GITDIR/gitconfig ~/.gitconfig

rm ~/.gitignore
ln -s $GITDIR/gitignore ~/.gitignore

# POWERLINE

POWERLINEDIR=$BASEDIR/tmux-powerline

rm ~/tmux-powerline
ln -s $POWERLINEDIR ~/.tmux-powerline 

echo "launch vim and install bundle with :BundleInstall\n"
echo "You will run patch-font.sh just afte\nr"
