# .bashrc 
export EDITOR="vim"  

set -o vi

export PATH=$PATH":/home/$USER/bin/:/home/$USER/.local/bin"

if [ -e $HOME/.bash/aliases ]; then
  source $HOME/.bash/aliases 
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
