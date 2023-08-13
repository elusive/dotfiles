# .bashrc 
export EDITOR="vim"  

set -o vi

# PATH Updates
export PATH=$PATH":/home/$USER/bin/:/home/$USER/.local/bin"
export PATH=$PATH":/home/$USER/.local/share/kitty.app/bin"
export NVM_DIR="$HOME/.nvm"



#############################
# =>    ALIASES
#############################
if [ -e $HOME/.aliases ]; then
  source $HOME/.aliases 
fi

#############################
# =>    FUNCTIONS
#############################
if [ -e $HOME/.functions ]; then
    source $HOME/.functions
fi


#TERM=xterm-256color  

export DOCKER_HOST=tcp://localhost:2375

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

# setup ssh agent
SSH_ENV="$HOME/.ssh/environment"

###############
# => keychain
###############
#eval `keychain --clear --agents ssh --eval id_rsa --eval github_rsa`
#eval `keychain --eval github_rsa`

export DISPLAY=localhost:0.0

echo ".bashrc applied"

. "$HOME/.cargo/env"
