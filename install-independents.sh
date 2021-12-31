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

mkdir $HOME/.local/bin
ln -s $(which fdfind) ~/.local/bin/fd

# cat alternative bat
sudo apt install bat -y
ln -s /usr/bin/batcat ~/.local/bin/bat
