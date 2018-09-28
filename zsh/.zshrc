export ZSH=/home/holden/.oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"


# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Plugins
# Custom plugins ~/.oh-my-zsh/custom/plugins/
plugins=(git ssh-agent)

# Load oh my zsh
source $ZSH/oh-my-zsh.sh

# Source cargo
source $HOME/.cargo/env

# User configuration
export LANG=en_US.UTF-8

# fzf
source $HOME/.fzf.zsh

# Aliases
alias vim="nvim"
alias gpodr="git pull origin develop --rebase"
alias fix-screen="xrandr --output DP-1 --right-of eDP-1 --mode 3840x2160 && xrandr --output DP-1 --right-of eDP-1 --mode 2560x1440 && xset r rate 250 30 && ~/./dotfiles/polybar/launch.sh"
alias dpsf='docker ps --format "{{.ID}} {{.Names}}"'
# Im bad at bash
alias dwatch='watch -x sh -c "docker ps --format \"{{.ID}} {{.Names}} {{.Status}}\" | sort -k2,2"'

# Node Version Manager stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Editor
export EDITOR="nvim"

# Golang ffs
export GOPATH="$HOME/code/go"
export GOBIN="$GOPATH/bin"
export PATH=$PATH:/usr/local/go/bin:$GOBIN

function dGC() {
  dpsf | grep $1 | awk '{ print $1 }'
}

function killAxkit {
  pkill -i axkit
  # rm -rf /Axkit/workspace.json && rf -rf Support/Axkit
}
