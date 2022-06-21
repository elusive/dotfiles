# .bashrc 
export EDITOR="vim"  

set -o vi

export PATH=$PATH":/home/$USER/bin/:/home/$USER/.local/bin"

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


if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bindings/bash/powerline.sh
fi

cd `cat ~/.prev_dir`
cd `cat ~/.prev_dir`
cat /dev/null > ~/.prev_dir 

TERM=xterm-256color  

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# redirect display to windows for showing thru MobaXterm's XServer
export DISPLAY=:0
export DOCKER_HOST=tcp://localhost:2375

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

# setup ssh agent
SSH_ENV="$HOME/.ssh/environment"

###############
# => keychain
###############
eval `keychain --clear --agents ssh --eval id_rsa --eval github_rsa`
#eval `keychain --eval github_rsa`
export DISPLAY=localhost:0.0
export DISPLAY=localhost:0.0
. "$HOME/.cargo/env"
