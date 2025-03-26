#!/bin/bash
#Used only as an addon to the dec mybashrc (in case mybash_rc.sh isn't used)
export EDITOR=nano
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export DIR87=`realpath $CURRENTDIR/../..`
export MYPROFILEDIR=`realpath $DIR87/myprofile`
export LIFETRACKERDIR=`realpath $DIR87/lifetracker`
export BLOGDIR=`realpath $DIR87/blog2020`
export PATH=$PATH:$MYPROFILEDIR/bin:~/code/dec/tmux
# alias c='cd ~/code/'
# alias vr='cd ~/code/gmetrivr/'
# alias 87='cd ~/code/sahil87/'
#export AWS_CONFIG_FILE=~/.aws/config #this is the default

source $MYPROFILEDIR/shell/custom-bash/myaliases.sh
source ~/code/kube/cc/kubeconfig/env.sh
source $LIFETRACKERDIR/shell/envvars.sh

#Lines in ~/.bashrc:
#source /home/gmetri/code/dec/shell/mybash_rc.sh #v1.1
#source /home/gmetri/code/dec/shell/mybash_theme.sh #v1.1
#source /home/gmetri/code/dec/shell/mybash_vars.sh #v1.1
#source /home/gmetri/code/sahil87/myprofile/shell/mybash_rc_addon.sh

#https://github.com/microsoft/vscode/issues/207033#issuecomment-2267453974\
#Makes font in vscode in wayland sharper
export ELECTRON_OZONE_PLATFORM_HINT=auto
