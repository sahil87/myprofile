#!/bin/bash
#Used only as an addon to the dec mybashrc (in case mybash_rc.sh isn't used)
export EDITOR=nano
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export DIR87=`realpath $CURRENTDIR/../..`
export MYPROFILE_DIR=`realpath $DIR87/myprofile`
export LIFETRACKER_DIR=`realpath $DIR87/lifetracker`
export BLOG_DIR=`realpath $DIR87/blog2020`
export PATH=$PATH:$MYPROFILE_DIR/bin:~/code/dec/tmux
# alias c='cd ~/code/'
# alias vr='cd ~/code/gmetrivr/'
# alias 87='cd ~/code/sahil87/'
#export AWS_CONFIG_FILE=~/.aws/config #this is the default

source $MYPROFILE_DIR/shell/custom-bash/myaliases.sh
source ~/code/kube/cc/kubeconfig/env.sh

#https://github.com/microsoft/vscode/issues/207033#issuecomment-2267453974\
#Makes font in vscode in wayland sharper
export ELECTRON_OZONE_PLATFORM_HINT=auto
