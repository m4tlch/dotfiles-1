#!/bin/bash

bash $DIR/.setup/dependencies.sh
bash $DIR/.setup/vim.sh
bash $DIR/.setup/zsh.sh
bash $DIR/.setup/font.sh
bash $DIR/.setup/tmux.sh
bash $DIR/.setup/git.sh

echo ".dotfiles are installed!"
echo "enjoy 😄 !"
