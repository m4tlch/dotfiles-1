#!/bin/bash
echo "Installing i3 configuration ..."

CDIR=`dirnmae $0`

ln -sd $CDIR/../i3 $CDIR/../../.i3

echo "😄  done"
