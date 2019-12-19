#!/bin/bash
#Used only as an addon to the dec mybashrc
export EDITOR=emacs
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export MYPROFILEDIR=`realpath $CURRENTDIR/..`
export DIR87=`realpath $MYPROFILEDIR/..`
export CODEDIR=`realpath $MYPROFILEDIR/../..`
export LIFETRACKERDIR=`realpath $DIR87/lifetracker`
export BLOGDIR=`realpath $DIR87/bloghexo`
export PATH=$PATH:$MYPROFILEDIR/bin
alias vr='cd ~/code/gmetrivr/'
alias 87='cd ~/code/sahil87/'
