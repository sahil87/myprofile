#!/bin/zsh

function linkfile() {
    local SOURCE=$1
    local DEST=$2
    local SUDO=$3
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    if (( $SUDO ))
    then
        sudo rm $DEST
        sudo ln -s $DIR/$SOURCE $DEST
    else
        rm $DEST
        ln -s $DIR/$SOURCE $DEST
    fi


}

linkfile emacs/init.el          ~/.emacs                            0
linkfile ssh/config             ~/.ssh/config                       0
linkfile ansible/ansible.cfg    ~/.ansible.cfg                      0
linkfile resolvconf/head        /etc/resolvconf/resolv.conf.d/head  1
sudo resolvconf -u;
