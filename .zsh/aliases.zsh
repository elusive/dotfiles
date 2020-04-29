# Example aliases
alias vz="vim ~/.zshrc"
alias sz="source ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias dc="docker-compose"
alias sshapi="ssh jogi@209.124.64.75 -p 7822"
if ls --color -d . &> /dev/null
then
  alias ls="ls --color=auto"
elif ls -G -d . &> /dev/null
then
  alias ls='ls -G'        # Compact view, show colors
fi

# List directory contents
alias sl=ls
alias la='ls -AF'       # Compact view, show hidden
alias ll='ls -al'
alias l='ls -a'
alias l1='ls -1'
alias _="sudo"

if grep --color=auto "a" "${BASH_IT}/"*.md &> /dev/null
then
  alias grep='grep --color=auto'
  export GREP_COLOR='1;33'
fi

alias ..='cd ..'         # Go up one directory
alias cd..='cd ..'       # Common misspelling for going up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias -- -='cd -'        # Go back

alias md='mkdir -p'
alias rd='rmdir'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias dc="docker-compose"
alias sshapi="ssh jogi@209.124.64.75 -p 7822"


