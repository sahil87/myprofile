#!/bin/bash

RC_FILE=~/.zshrc
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PARENT_DIR=`realpath $CURRENT_DIR/../..`

if [ -f $RC_FILE ] && grep "myzsh_rc.sh #v1.1" $RC_FILE
  then echo "zrc all good."
  else
    set -x
    sed -i '/^source \$ZSH\/oh-my-zsh.sh/s/^/# /' $RC_FILE
    echo "source $PARENT_DIR/shell/myzsh_rc.sh #v1.1" >> $RC_FILE
fi
