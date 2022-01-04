#!/bin/bash
SOURCE=${BASH_SOURCE[0]}
BASE_DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )

echo "Copying .zshrc"
cp $BASE_DIR/../files/zshrc $HOME/.zshrc
echo "Copying .p10k.zsh"
cp $BASE_DIR/../files/p10k.zsh $HOME/.p10k.zsh
echo "Copying .bash_aliases"
cp $BASE_DIR/../files/bash_aliases $HOME/.bash_aliases

echo "Adding path"
echo "PATH=$PATH:$HOME/.local/bin" >> ~/.zshrc

echo "#######################################"
echo "               Rebooting               "
echo "                                       "
echo "#######################################"
sudo reboot
