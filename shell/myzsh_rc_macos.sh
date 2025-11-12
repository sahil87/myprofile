#!/bin/zsh

# Setup instructions:
# 1. Install zap: zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
# 2. In ~/.zshrc, after zap initialization, add:
#    source /Users/sahil/code/sahil87/myprofile/shell/myzsh_rc_macos.sh

CURRENTDIR=${0:a:h}
export MYPROFILEDIR=`realpath $CURRENTDIR/..`
export SAHIL87DIR=`realpath $MYPROFILEDIR/..`
export CODEDIR=`realpath $MYPROFILEDIR/../..`
export LIFETRACKERDIR=`realpath $SAHIL87DIR/lifetracker`
export BLOGDIR=`realpath $SAHIL87DIR/blog2020`
export DEV_SHELLDIR=`realpath $CODEDIR/weaver/dev-shell`
export WEAVERDIR=`realpath $CODEDIR/weaver`
export WEAVERDIR_WD=`realpath $WEAVERDIR/wd`

alias weaver="cd $WEAVERDIR"
alias wd="cd $WEAVERDIR_WD"
alias ds="cd $DEV_SHELLDIR"

#First match wins. So the path that comes earlier has higher precedence
path=($path $MYPROFILEDIR/bin-macos $MYPROFILEDIR/bin $CODEDIR/bin $DEV_SHELLDIR/src/bin $HOME/.cargo/bin .)

# Initialize zsh completion system (replaces oh-my-zsh's completion setup)
# autoload -Uz compinit && compinit

# Enable colors (replaces oh-my-zsh's color initialization)
# autoload -U colors && colors

# Custom plugins (sourced directly)
source $CURRENTDIR/custom-zsh/plugins/myfunctions/myfunctions.plugin.zsh
source $CURRENTDIR/custom-zsh/plugins/myaliases/myaliases.plugin.zsh

# Direct fzf integration
[ -f /opt/homebrew/opt/fzf/shell/completion.zsh ] && source /opt/homebrew/opt/fzf/shell/completion.zsh
[ -f /opt/homebrew/opt/fzf/shell/key-bindings.zsh ] && source /opt/homebrew/opt/fzf/shell/key-bindings.zsh

# Docker completions (direct from docker CLI)
if command -v docker &> /dev/null; then
  source <(docker completion zsh)
fi

# kubectl completions auto-load via fpath (/opt/homebrew/share/zsh/site-functions)
# ssh-agent: manage manually if needed

# TODO: Install zap and add theme here
# Example: plug "zap-zsh/supercharge"
# Example: plug "zap-zsh/zap-prompt"

## For nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

plug "rkh/zsh-jj"
