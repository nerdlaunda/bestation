#!/bin/bash
if [[ ! -d "$HOME/.local/bin" ]]; then
    sudo mkdir -p $HOME/.local/bin
fi

if [[ -f "$HOME/.local/bin/fd" ]]; then
    sudo rm $HOME/.local/bin/fd
fi 

if [[ -f "$HOME/.local/bin/bat" ]]; then
    sudo rm $HOME/.local/bin/bat
fi 

sudo apt-get update

# Installing git
echo "#################################"
echo "######         git         ######"
echo "#################################"
which git > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    echo "Installing..."
    sudo apt-get -qq install git -y
else
    echo 'Git already installed!'
    sleep 0.5
fi


# Installing curl
echo "#################################"
echo "######        curl         ######"
echo "#################################"
which curl > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    echo "Installing..."
    sudo apt-get -qq install curl -y
else
    echo 'Curl already installed!'
    sleep 0.5
fi

# Installing unzip
echo "#################################"
echo "######        unzip        ######"
echo "#################################"
which unzip > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    sudo apt-get -qq install unzip -qq -y
else
    echo 'Unzip already installed!'
    sleep 0.5
fi