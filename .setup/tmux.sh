#!/bin/bash

echo "Installing tmus configuration ..."

CDIR=`dirname $0`
TMUXCONF=$CDIR/../tmux/conf
TMUXCF=$CDIR/../../.tmux.conf

if [ -f $TMUXCF ]; then
    rm $TMUXCF
fi

ln -s $TMUXCONF $TMUXCF
echo "😄  done"
