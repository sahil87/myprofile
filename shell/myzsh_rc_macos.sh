#!/bin/zsh

CURRENTDIR=${0:a:h}
export MYPROFILEDIR=`realpath $CURRENTDIR/..`
export DIR87=`realpath $MYPROFILEDIR/..`
export CODEDIR=`realpath $MYPROFILEDIR/../..`

#First match wins. So the path that comes earlier has higher precedence
path=($path $MYPROFILEDIR/bin-macos $CODEDIR/dec/shell/bin-macos)
