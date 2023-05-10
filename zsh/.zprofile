# zsh configuration
export SHELL_SESSIONS_DISABLE=1
export LS_COLORS="$LS_COLORS:di=0;34:ln=0;35:ex=0;31:"

# default paths
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# apps paths
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"
export TASKRC="$HOME/.task/.taskrc"
export LEDGER_HOME="$HOME/.ledger"
eval "$(/opt/homebrew/bin/brew shellenv)"
