# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/holden/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias vim=nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

fpath=( "$HOME/.zfunctions" $fpath )
PATH=$PATH:~/.cargo/bin

autoload -U promptinit; promptinit
prompt pure

# Pure Configs
ZSH_THEME="" # Theme doesn't work too well
#PURE_PROMPT_SYMBOL=">" # Too lazy to upgrade font
PURE_GIT_PULL=0

