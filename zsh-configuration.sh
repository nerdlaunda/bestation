#!/bin/bash
SOURCE=${BASH_SOURCE[0]}
BASE_DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )

#oh-my-zsh
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash

# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Inatalling plugins

echo "Installing plugins: "
git clone https://github.com/jimeh/zsh-peco-history.git $HOME/.oh-my-zsh/custom/plugins/zsh-peco-history
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z $HOME/.oh-my-zsh/custom/plugins/zsh-z
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
