#!/bin/bash

echo "Installing git configuration ..."

CDIR=`dirname $0`
GITCONF=$CDIR/../git/gitconfig
GITIGNORE=$CDIR/../git/gitignore
GITCF=$CDIR/../../.gitconfig
GITIG=$CDIR/../../.gitignore

if [ -f $GITCF ]; then
    rm $GITCF
fi
if [ -f $GITIG ]; then
    rm $GITIG
fi

ln -s $GITCONF $GITCF
ln -s $GITIGNORE $GITIG
echo "😄  done"
