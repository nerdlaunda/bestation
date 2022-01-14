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
echo "export PATH=\$PATH:\$HOME/.local/bin" >> ~/.zshrc
echo ""

echo "Changing default shell to /bin/bash"
USERNAME=$(id -un)
echo "Enter password for user [$USERNAME]"
chsh -s /bin/zsh $USERNAME
echo ""
echo "setup process completed."
echo "Don't forget to restart your terminal!"