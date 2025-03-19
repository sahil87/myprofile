#!/bin/zsh

# Comment out "plugins=(git)" and the "source $ZSH/oh-my-zsh.sh" line in ~/.zshrc
# Add the line "source /Users/sahil/code/sahil87/myprofile/shell/myzsh_rc_macos.sh" to ~/.zshrc

CURRENTDIR=${0:a:h}
export MYPROFILEDIR=`realpath $CURRENTDIR/..`
# export DIR87=`realpath $MYPROFILEDIR/..`
# export CODEDIR=`realpath $MYPROFILEDIR/../..`

#First match wins. So the path that comes earlier has higher precedence
path=($path $MYPROFILEDIR/bin-macos $MYPROFILEDIR/bin)

export ZSH_CUSTOM=$CURRENTDIR/custom-zsh
plugins=(myfunctions git docker kubectl themes ssh-agent man history-substring-search myaliases)

ZSH_THEME="sahil3"
source $ZSH/oh-my-zsh.sh
