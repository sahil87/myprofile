#!/bin/zsh

# Comment out "plugins=(git)" and the "source $ZSH/oh-my-zsh.sh" line in ~/.zshrc
# Add the line "source /Users/sahil/code/sahil87/myprofile/shell/myzsh_rc_macos.sh" to ~/.zshrc

CURRENTDIR=${0:a:h}
export MYPROFILEDIR=`realpath $CURRENTDIR/..`
export DIR87=`realpath $MYPROFILEDIR/..`
export CODEDIR=`realpath $MYPROFILEDIR/../..`
export LIFETRACKERDIR=`realpath $DIR87/lifetracker`
export BLOGDIR=`realpath $DIR87/blog2020`
export WD_BIN=`realpath $CODEDIR/weaver/dev-shell`

source $LIFETRACKERDIR/shell/envvars.sh

export WEAVERDIR=`realpath $CODEDIR/weaver`
export WEAVERDIR_WD=`realpath $WEAVERDIR/wd`

alias weaver="cd $WEAVERDIR"
alias wd="cd $WEAVERDIR_WD"

#First match wins. So the path that comes earlier has higher precedence
path=($path $MYPROFILEDIR/bin-macos $MYPROFILEDIR/bin $CODEDIR/bin $WD_BIN/src/bin .)

export ZSH_CUSTOM=$CURRENTDIR/custom-zsh
plugins=(myfunctions git docker kubectl themes ssh-agent man fzf history-substring-search myaliases)

ZSH_THEME="sahil3"
source $ZSH/oh-my-zsh.sh

## For nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
