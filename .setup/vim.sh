#!/bin/bash
echo "Installing vim, please wait ..."

echo "Bundles ..."
vim +BundleInstall +qall
echo "😄  done"
