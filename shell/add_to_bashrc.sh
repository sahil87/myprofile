#!/bin/bash
RC_FILE=~/.bashrc
if [ -f $RC_FILE ] && grep mybash_rc.sh $RC_FILE
  then echo "bashrc all good."
  else echo "source `pwd`/mybash_rc.sh" >> $RC_FILE
fi
