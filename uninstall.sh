#!/bin/bash
SOURCE=${BASH_SOURCE[0]}
BASE_DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )

read -r -p "Are you sure you want to Uninstall? [y/N] " confirmation
if [ "$confirmation" != y ] && [ "$confirmation" != Y ]; then
  echo "Uninstall cancelled"
  exit
fi

# restore preflight 
# TODO specify files
#sudo rm -rf $HOME/.local
echo "Removed .local directory"

# change default shell
echo "Changing default shell to /bin/bash"
USERNAME=$(id -un)
echo "Enter password for user [$USERNAME]"
chsh -s /bin/bash $USERNAME

# uninstall independents
rm $HOME/.zshrc $HOME/.zsh_history $HOME/.z $HOME/.zcompdump*
sudo apt remove fd-find -qq -y
sudo apt remove peco -qq -y
sudo apt remove bat -qq -y
sudo rm $(which exa)


# remove zsh/omz files
echo "Removing ~/.oh-my-zsh"
if [ -d ~/.oh-my-zsh ]; then
  rm -rf ~/.oh-my-zsh
fi

if [ -e ~/.zshrc ]; then
  ZSHRC_SAVE=~/.zshrc.omz-uninstalled-$(date +%Y-%m-%d_%H-%M-%S)
  echo "Found ~/.zshrc -- Renaming to ${ZSHRC_SAVE}"
  mv ~/.zshrc "${ZSHRC_SAVE}"
fi

echo "Looking for original zsh config..."
ZSHRC_ORIG=~/.zshrc.pre-oh-my-zsh
if [ -e "$ZSHRC_ORIG" ]; then
  echo "Found $ZSHRC_ORIG -- Restoring to ~/.zshrc"
  mv "$ZSHRC_ORIG" ~/.zshrc
  echo "Your original zsh config was restored."
else
  echo "No original zsh config found"
fi

if hash chsh >/dev/null 2>&1 && [ -f ~/.shell.pre-oh-my-zsh ]; then
  old_shell=$(cat ~/.shell.pre-oh-my-zsh)
  echo "Switching your shell back to '$old_shell':"
  if chsh -s "$old_shell"; then
    rm -f ~/.shell.pre-oh-my-zsh
  else
    echo "Could not change default shell. Change it manually by running chsh"
    echo "or editing the /etc/passwd file."
  fi
fi

sudo apt remove zsh -y

echo "Thanks for trying out Bestation. Changes has been reverted."
echo "Don't forget to restart your terminal!"