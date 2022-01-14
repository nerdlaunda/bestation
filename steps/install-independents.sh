#!/bin/bash

# Inatalling zsh
echo "#################################"
echo "######         zsh         ######"
echo "#################################"
which zsh > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    echo 'Installing zsh'
    sudo apt-get -qq install zsh -y
    echo 'zsh Installed'
    sleep 0.5
else
    echo 'Zsh already installed!'
    sleep 0.5
fi


# Installing jq
echo "#################################"
echo "######          jq         ######"
echo "#################################"
which zsh > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    sudo apt-get -qq install jq -y
else
    echo 'jq already installed!'
    sleep 0.5
fi

# top alternative htop
echo "#################################"
echo "######         htop        ######"
echo "#################################"
which htop > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    sudo apt-get -qq install htop -y
    sleep 0.5
else
    echo 'htop already installed!'
    sleep 0.5
fi

# find alternative fdfind
echo "#################################"
echo "######       fd-find       ######"
echo "#################################"
which fdfind > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    sudo apt-get -qq install fd-find -y
    sudo ln -s $(which fdfind) ~/.local/bin/fd
    sleep 0.5
else
    echo 'fdfind already installed!'
    sleep 0.5
fi

# Installing bat
echo "#################################"
echo "######         bat         ######"
echo "#################################"
which batcat > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    sudo apt-get -qq install bat -y
    sudo ln -s $(which batcat) ~/.local/bin/bat
    sleep 0.5
else
    echo 'bat already installed!'
    sleep 0.5
fi

# Installing peco
echo "#################################"
echo "######         peco        ######"
echo "#################################"
which peco > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    sudo apt-get -qq install peco -y
    sleep 0.5
else
    echo 'Peco already installed!'
    sleep 0.5
fi


# Installing exa
echo "#################################"
echo "######         exa         ######"
echo "#################################"
which exa > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    mkdir /tmp/exa
    wget https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip -O /tmp/exa/exa.zip
    unzip /tmp/exa/exa.zip -d /tmp/exa
    sudo cp /tmp/exa/bin/exa /usr/local/bin/exa 
    rm -rf /tmp/exa
    sleep 0.5
else
    echo 'Peco already installed!'
    sleep 0.5
fi

