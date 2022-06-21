# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# If you come from bash you might have to change your $PATH.
export ZSH="/home/jogi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
POWERLEVEL10K_PROMPT_ON_NEWLINE=true
ZSH_THEME="powerlevel10k/powerlevel10k" #agnoster  #cdimascio-lambda   #"powerlevel9k/powerlevel9k"

## Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(dotnet docker git)

# turn on git completion in zsh
autoload -Uz compinit && compinit

source $ZSH/oh-my-zsh.sh

# User configuration

# use external file for all aliases 
if [ -e $HOME/.aliases ]; then 
  source $HOME/.aliases 
fi

if [ -e $HOME/.functions ]; then
    source $HOME/.functions
fi

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# setup ssh agent
#eval `ssh-agent`
#ssh-add
clear

# setup go root and path
export GOROOT=/usr/local/go
export GOPATH=/home/jogi/learn/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# setup dotnet cli 
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$DOTNET_ROOT:$PATH

# setup nvm
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM
#nvm use 10.16.2 

# source ~/.autoenv/activate.sh
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export DISPLAY=localhost:0.0

export RUST_SRC_PATH=${HOME}/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src

# due to previous installs/configuration for docker with WSL2 you must:
unset DOCKER_HOST

# setup docker host (allows use of docker in windows from wsl)
#export DOCKER_HOST=tcp://localhost:2375 


export PATH=~/bin:$PATH

# xserver for wsl2
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
export LIBGL_ALWAYS_INDIRECT=true
# neofetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
