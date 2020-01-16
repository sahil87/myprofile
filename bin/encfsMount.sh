#!/bin/bash

CURRENT_SCRIPT=${BASH_SOURCE[0]:-$0}
CURRENT_DIR="$( cd $( dirname ${CURRENT_SCRIPT} ) && pwd )"

SOURCE=$(realpath $CURRENT_DIR/.encfs)
DEST=$(realpath $CURRENT_DIR/../../../../r)

if [[ ! -d $DEST ]]
then
  echo "Destination folder $DEST does not exists"
  exit
fi

if [[ ! -d $SOURCE ]]
then
  echo "Source folder $SOURCE does not exists"
  exit
fi

#Attemp to unmount
fusermount -u $DEST
if [[ "$?" == 0 ]]
then
  echo "Mischief Managed. Unmounting."
#Wasn't able to umount, so mount instead
else
  echo "Mounting."
  encfs $SOURCE $DEST
fi
