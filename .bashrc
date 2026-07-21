# aliases
if [ -f "$HOME/.local/.aliases" ]; then
  . "$HOME/.local/.aliases"
fi


# functions
if [ -f "$HOME/.local/.functions" ]; then
  . "$HOME/.local/.functions"
fi


export EDITOR="hx"


# fnm
FNM_PATH="/c/Users/JOHGIL/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "$(fnm env --shell bash)"
fi


# display system info
neofetch


# starship
eval "$(starship init bash)"


# claud code config
# Enable Bedrock integration
export CLAUDE_CODE_USE_BEDROCK="1"

# AWS region and profile
# ** Make sure you update the `AWS_PROFILE` to match the profile name for the swiftcloud account you are using
export AWS_REGION="us-west-2"
export AWS_PROFILE="dcxdev"
export ANTHROPIC_MODEL="global.anthropic.claude-sonnet-4-6"
export ANTHROPIC_SMALL_FAST_MODEL="us.anthropic.claude-haiku-4-5-20251001-v1:0"


# zoxide (MUST BE LAST)
#export _ZO_DATA_DIR="$HOME/AppData/Local/zoxide"
#eval "$(zoxide init bash)"
#source ~/.zoxide.sh

# z.sh dir jumper
. "$HOME/.local/bin/z.sh" 