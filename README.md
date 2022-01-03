# Bestation

## What is it?
This is a automation script to beautify your terminal for a better experience as well as productivity. 

## What it does?
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
    - NOTE: **Powerlevel10k can be configured using command `p10k configure` after script is successful. And fonts needs to be installed manually.**
