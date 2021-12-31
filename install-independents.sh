#!/bin/bash

# Inatalling zsh
which zsh > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    echo "#################################"
    echo "######         zsh         ######"
    echo "#################################"
    echo 'Installing zsh'
    sudo apt-get install zsh -y
    sudo chsh -s $(which zsh)
    echo 'zsh Installed'
    sleep 2
else
    echo 'Zsh already installed!'
    sleep 2
fi


# Installing jq
which zsh > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    echo "#################################"
    echo "######          jq         ######"
    echo "#################################"
    sudo apt install jq -y
else
    echo 'jq already installed!'
    sleep 2
fi

# top alternative htop
which htop > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    echo "#################################"
    echo "######         htop        ######"
    echo "#################################"
    sudo apt install htop
    sleep 2
else
    echo 'htop already installed!'
    sleep 2
fi

# find alternative fdfind
which fdfind > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    echo "#################################"
    echo "######       fd-find       ######"
    echo "#################################"
    sudo apt install fd-find -y
    mkdir $HOME/.local/bin
    ln -s $(which fdfind) ~/.local/bin/fd
    sleep 2
else
    echo 'fdfind already installed!'
    sleep 2
fi

# Installing bat
which batcat > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    echo "#################################"
    echo "######         bat         ######"
    echo "#################################"
    sudo apt install bat -y
    ln -s /usr/bin/batcat ~/.local/bin/bat
    sleep 2
else
    echo 'bat already installed!'
    sleep 2
fi

# Installing git
which git > /dev/null 2>&1
if [[ $? -ne 0 ]]; then
    echo "#################################"
    echo "######         git         ######"
    echo "#################################"
    sudo apt install git -y
else
    echo 'Git already installed!'
    sleep 2
fi