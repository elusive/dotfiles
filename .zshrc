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
#POWERLEVEL10K_PROMPT_ON_NEWLINE=true
ZSH_THEME="robbyrussell" #cobalt2 #agnoster  #cdimascio-lambda   #"powerlevel9k/powerlevel9k"

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

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# only use this for running docker in wsl/2-
# export DOCKER_HOST=tcp://localhost:2375

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'



# export ARCHFLAGS="-arch x86_64"

# setup ssh agent
#eval `ssh-agent`
#ssh-add
clear

# setup dotnet cli 
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$DOTNET_ROOT:$PATH

# setup nvm
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM
NVM_DIR="/home/$USER/.nvm"
nvm use v16.18.1
 
export LIBGL_ALWAYS_INDIRECT=true
# fix pager and less values
export PAGER=""
export LESS="-F -X -R"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


#    PATH Updates
export PATH="$PATH:/home/$USER/.local/share/kitty.app/bin"

source ~/.profile 


# include Z, yo
. ~/.local/bin/z/z.sh

echo ".zshrc applied"
