#!/bin/bash
SOURCE=${BASH_SOURCE[0]}
BASE_DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )


cp $BASE_DIR/files/zshrc $HOME/.zshrc
cp $BASE_DIR/files/p10k.zsh $HOME/.p10k.zsh
cp $BASE_DIR/files/bash_aliases $HOME/.bash_aliases


echo "PATH=$PATH:$HOME/.local/bin" >> ~/.zshrc