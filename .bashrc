# .bashrc 
export EDITOR="vim"  

set -o vi

for i in ~/completion/*; do
    . $i 
done  

# Source global definitions 
if [ -f /etc/bashrc ]; then
    . /etc/bashrc 
fi  

# custom functions 
if [ -f /home/$USER/.bash/functions ]; then
    . /home/$USER/.bash/functions 
fi  

# custom functions 
if [ -f /home/$USER/.bash/aliases ]; then
    . /home/$USER/.bash/aliases 
fi  

export PATH=$PATH":/home/$USER/bin/:/home/$USER/.local/bin"

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi

cd `cat ~/.prev_dir`
cd `cat ~/.prev_dir`
cat /dev/null > ~/.prev_dir 

eval "$(dircolors ~/.bash/.DIR_COLORS)"  

TERM=xterm-256color  

# {{{
# Node Completion - Auto-generated, do not touch. 
shopt -s progcomp 
for f in $(command ls ~/.node-completion); do   
    f="$HOME/.node-completion/$f"   
    test -f "$f" && . "$f" 
done 
# }}}

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# DOCKER aliases
alias dc=docker-compose
alias dcr='docker-compose run'

export AWS_REGION=us-west-2
export AWS_ACCESS_KEY_ID=AKIAIVYY5TWKTUNV4HXA
export AWS_SECRET_ACCESS_KEY=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

export AWS_ACCESS_KEY=AK

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# redirect display to windows for showing thru MobaXterm's XServer
export DISPLAY=:0
export DOCKER_HOST=tcp://localhost:2375

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
