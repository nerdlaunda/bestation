#!/bin/bash

# Inatalling zsh
echo 'Installing zsh'
sudo apt-get update
sudo apt-get install zsh -y
chsh -s $(which zsh)
echo 'zsh Installed'

# Installing jq
sudo apt install jq -y

# top alternative htop
sudo apt install htop

# find alternative fdfind
sudo apt install fd-find -y

if [[ -f "$HOME/.local/bin/fd" ]]; then
    rm $HOME/.local/bin/fd
else 
    mkdir $HOME/.local/bin
    ln -s $(which fdfind) ~/.local/bin/fd
fi

