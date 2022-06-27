#!/bin/bash
#Used only as an addon to the dec mybashrc (in case mybash_rc.sh isn't used)
export EDITOR=emacs
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export DIR87=`realpath $CURRENTDIR/../..`
export MYPROFILEDIR=`realpath $DIR87/myprofile`
export LIFETRACKERDIR=`realpath $DIR87/lifetracker`
export BLOGDIR=`realpath $DIR87/blog2020`
export PATH=$PATH:$MYPROFILEDIR/bin

source ~/code/kube/cc/kubeconfig/env.sh
source $LIFETRACKERDIR/shell/envvars.sh
