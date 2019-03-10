#!/bin/bash
RC_FILE=~/.zshrc
CURRENTDIR=`pwd`
if [ -f $RC_FILE ] && grep "myzsh_rc.sh #v1.1" $RC_FILE
  then echo "zrc all good."
  else
    set -x
    sed -i '/^source \$ZSH\/oh-my-zsh.sh/s/^/# /' $RC_FILE
    echo "source $CURRENTDIR/myzsh_rc.sh #v1.1" >> $RC_FILE
fi
