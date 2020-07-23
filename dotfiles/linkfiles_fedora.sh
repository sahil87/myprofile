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

#linkfile custom-apps-menu/applications-override.json  ~/.local/share/cinnamon/applets/custom-apps-menu@sahil87/applications-override.json                        0
#linkfile emacs/init.el              ~/.emacs                            0
linkfile ssh/ssh.config              ~/.ssh/config                       0
#linkfile ansible/.ansible.cfg       ~/.ansible.cfg                      0
linkfile git/.gitconfig             ~/.gitconfig                        0
#linkfile luckybackup/MyBackup.profile  ~/.luckyBackup/profiles/MyBackup.profile 0
linkfile sysctl/40-max-user-watches.conf /etc/sysctl.d/40-max-user-watches.conf       1

#DISABLE SELINUX!
linkfile network-fedora/resolv.conf /etc/resolv.conf                    1
linkfile network-fedora/dnsmasq.d   /etc/NetworkManager/dnsmasq.d       1
linkfile network-fedora/NetworkManager/conf.d /etc/NetworkManager/conf.d 1
sudo service NetworkManager restart

#linkfile resolvconf-ubuntu/head            /etc/resolvconf/resolv.conf.d/head  1
#linkfile resolvconf-ubuntu/tail            /etc/resolvconf/resolv.conf.d/tail  1
#sudo resolvconf -u;

#To add alias 10.0.2.2 to 127.0.0.1 do https://www.unixmen.com/linux-basics-assign-multiple-ip-addresses-single-network-interface-card-centos-7/
#Add line IPADDR=10.0.2.2 to /etc/sysconfig/network-scripts/ifcfg-lo
