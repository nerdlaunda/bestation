#!/bin/bash
if [[ ! -d "$HOME/.local/bin" ]]; then
    mkdir $HOME/.local/bin
fi

if [[ -f "$HOME/.local/bin/fd" ]]; then
    rm $HOME/.local/bin/fd
fi 

if [[ -f "$HOME/.local/bin/bat" ]]; then
    rm $HOME/.local/bin/bat
fi 

sudo apt-get update

# Installing git
echo "#################################"
echo "######         git         ######"
echo "#################################"
which git > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    echo "Installing..."
    sudo apt install git -y
else
    echo 'Git already installed!'
    sleep 2
fi


# Installing curl
echo "#################################"
echo "######        curl         ######"
echo "#################################"
which curl > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    echo "Installing..."
    sudo apt install curl -y
else
    echo 'Curl already installed!'
    sleep 2
fi