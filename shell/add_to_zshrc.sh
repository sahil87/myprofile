#!/bin/bash
file1=~/.zshrc
CURRENTDIR=`pwd`
if [ -f $file1 ] && grep "myzsh_rc.sh #v1.1" $file1
  then echo "zrc all good."
  else
        set -x
        sed -i '/^source \$ZSH\/oh-my-zsh.sh/s/^/# /' $file1
        echo "source $CURRENTDIR/myzsh_rc.sh #v1.1" >> $file1
fi
