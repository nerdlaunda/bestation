# Bestation
## Index
1. [Operations](https://github.com/nerdlaunda/bestation#1-operations)
    - Installation
    - Uninstallation
2. [What is it?](https://github.com/nerdlaunda/bestation#2-what-is-it)
3. [What it does?](https://github.com/nerdlaunda/bestation#3-what-it-does)
4. [Known Issues](https://github.com/nerdlaunda/bestation#4-known-issues)
## 1. Operations
1. How to install?
    - Visit [release page](https://github.com/nerdlaunda/bestation/releases)
or clone the repository `git clone https://github.com/nerdlaunda/bestation/`
    - Run `setup.sh`

2. How to Uninstall?
    - Run `uninstall.sh`

## 2. What is it?
This is a automation script to beautify your terminal for a better experience as well as productivity. 

## 3. What it does?
It does the following.
1. Install these tools:
    - Git
    - curl
    - zsh 
    - Peco
    - jq
    - htop
    - exa
    - bat
2. What are the additional item installed?
    - Zsh theme:
        - powerlevel10k
    - Zsh plugins:
        - zsh-peco-hitsory
        - zsh-autosuggestions
        - zsh-syntax-highlighting
        - zsh-z
        - Git
    - zsh configuaration file
    - powerlevel10k configuaration file

3. How to install?
    1. Make sure you have sudo permissions to the current user and internet connectivity.
    2. Go to a directory where user has write permission. If not sure type `cd /tmp` and hit enter.
    3. Type `git clone https://github.com/nerdlaunda/bestation.git`
    or a latest release can be downloaded from release page https://github.com/nerdlaunda/bestation/releases.
    4. Type `/tmp/bestation/setup.sh`

4. How and what exactly it does?
    - Execution starts from setup.sh
    - As pre-flight 
        - It checks if $HOME/.local/bin exists and(or) other tools. If exists then they are removed.
        - Install Git and curl
    - As Independents it check if below tools are exists and installs them
        - zsh 
        - Peco
        - jq
        - htop
        - exa
        - bat
    - As zsh configuaration
        - Install oh-my-zsh
        - Install powerlevel10k
        - Download the custom plugins
    - As finalizing
        - It copies files from ./files directory to respective destination
    - NOTE: **Powerlevel10k can be (not required) configured using command `p10k configure` after script is successful. And fonts needs to be installed manually.**

## 4. Known issues
1. On uninstall, if the terminal(wsl) breaks with error 
> [process exited with code 1] 
    - Run in powershell `wsl.exe -e sudo apt-get install zsh`
    - run `sudo chsh -s /bin/bash <username>`
    - Restart terminal