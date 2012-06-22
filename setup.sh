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

# SETUP LOCAL BINARIES

sudo wget http://getcomposer.org/composer.phar -O /usr/local/bin/composer
sudo chmod a+x /usr/local/bin/composer

sudo wget http://cs.sensiolabs.org/get/php-cs-fixer.phar -O /usr/local/bin/php-cs-fixer
sudo chmod a+x /usr/local/bin/php-cs-fixer
