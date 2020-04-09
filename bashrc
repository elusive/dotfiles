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

powerline-daemon -q 
POWERLINE_BASH_CONTINUATION=1 
POWERLINE_BASH_SELECT=1 
POWERLINE_NO_SHELL_ABOVE=1 
. ~/repos/powerline/powerline/bindings/bash/powerline.sh  

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# redirect display to windows for showing thru MobaXterm's XServer
export DISPLAY=:0
export DOCKER_HOST=tcp://localhost:2375

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
