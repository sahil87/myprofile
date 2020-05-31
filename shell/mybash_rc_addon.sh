#!/bin/bash
#Used only as an addon to the dec mybashrc (in case mybash_rc.sh isn't used)
export EDITOR=emacs
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export DIR87=`realpath $CURRENTDIR/../..`
export MYPROFILEDIR=`realpath $DIR87/myprofile`
export LIFETRACKERDIR=`realpath $DIR87/lifetracker`
export BLOGDIR=`realpath $DIR87/bloghexo`
export PATH=$PATH:$MYPROFILEDIR/bin
alias c='cd ~/code/'
alias vr='cd ~/code/gmetrivr/'
alias 87='cd ~/code/sahil87/'
export AWS_CONFIG_FILE=~/.aws/config
export AWS_SHARED_CREDENTIALS_FILE=~/code/gmetrivr/gmbuild/kubernetes/config/aws_shared_config.ini
source ~/code/vmc/kubeconfig/env.sh
alias ssh-add-personal="source $MYPROFILEDIR/bin/ssh-add-personal-script"
alias ssh-add-work="source $MYPROFILEDIR/bin/ssh-add-work-script"

#Lines in ~/.bashrc:
#source /home/gmetri/code/dec/shell/mybash_rc.sh #v1.1
#source /home/gmetri/code/dec/shell/mybash_theme.sh #v1.1
#source /home/gmetri/code/dec/shell/mybash_vars.sh #v1.1
#source /home/gmetri/code/sahil87/myprofile/shell/mybash_rc_addon.sh
