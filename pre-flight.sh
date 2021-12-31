#!/bin/bash
if [[ ! -d "$HOME/.local/bin" ]]
    mkdir $HOME/.local/bin
fi

if [[ -f "$HOME/.local/bin/fd" ]]; then
    rm $HOME/.local/bin/fd
fi 