# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# If you come from bash you might have to change your $PATH.
  export ZSH="/home/jogi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=cdimascio-lambda   #"powerlevel9k/powerlevel9k"
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Set list of themes to pick from when loading at random
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

source $ZSH/oh-my-zsh.sh

# User configuration

# use external file for all aliases 
if [ -e $HOME/.aliases ]; then 
  source $HOME/.aliases 
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
export GOROOT=/usr/lib/go
export GOPATH=$Home/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH 

# setup docker host (allows use of docker in windows from wsl)
export DOCKER_HOST=tcp://localhost:2375 

# setup nvm
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM
#nvm use 10.16.2 

# source ~/.autoenv/activate.sh
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
