#!/bin/zsh
function linkfile() {
    local SOURCE=$1
    local DEST=$2
    local SUDO=$3
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    if (( $SUDO ))
    then
        [ -f $DEST -o -L $DEST ] && sudo rm $DEST
        [ -d $DEST ] && sudo rmdir $DEST
        sudo ln -s $DIR/$SOURCE $DEST
    else
        [ -f $DEST -o -L $DEST ] && rm $DEST
        [ -d $DEST ] && rmdir $DEST
        ln -s $DIR/$SOURCE $DEST
    fi
}

linkfile custom-apps-menu/applications-override.json  ~/.local/share/cinnamon/applets/custom-apps-menu@sahil87/applications-override.json                        0
linkfile emacs/init.el              ~/.emacs                            0
linkfile ssh/config                 ~/.ssh/config                       0
linkfile ansible/.ansible.cfg       ~/.ansible.cfg                      0
linkfile git/.gitconfig             ~/.gitconfig                        0
linkfile resovlconf/fedraResolv.conf /etc/resolv.conf                   1
sudo service NetworkManager restart
#linkfile ../configs/luckybackup/MyBackup.profile  ~/.luckyBackup/profiles/MyBackup.profile 0
#linkfile ../configs/nginx/conf.d    /etc/nginx/conf.d                   1
#linkfile resolvconf/head            /etc/resolvconf/resolv.conf.d/head  1
#linkfile resolvconf/tail            /etc/resolvconf/resolv.conf.d/tail  1
#sudo resolvconf -u;
#linkfile resolvconf/fedraNm.conf /etc/NetworkManager/conf.d/fedoraNm.conf  1
