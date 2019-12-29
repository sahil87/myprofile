#!/bin/bash

RC_FILE=~/.bashrc
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PARENT_DIR=`realpath $CURRENT_DIR/../..`

if [ -f $RC_FILE ] && grep "mybash_rc.sh #v1.1" $RC_FILE
  then echo "bashrc all good."
  else
    set -x
    echo "source $PARENT_DIR/shell/mybash_rc.sh #v1.1" >> $RC_FILE
fi
