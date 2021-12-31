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