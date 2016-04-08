#!/bin/bash
file1=~/.zshrc
if [ -f $file1 ] && grep "myzsh_rc.sh #v1.1" $file1
  then echo "zrc all good."
  else
        set -x
        sed -i '/^source \$ZSH\/oh-my-zsh.sh/s/^/# /' ~/.zshrc
        echo "source `pwd`/myzsh_rc.sh #v1.1" >> $file1
fi
