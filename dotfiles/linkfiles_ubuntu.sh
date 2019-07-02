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
linkfile dotfiles/ssh/config                 ~/.ssh/config                           0
linkfile dotfiles/ansible/.ansible.cfg       ~/.ansible.cfg                          0
linkfile dotfiles/git/.gitconfig             ~/.gitconfig                            0
linkfile dotfiles/sysctl/40-max-user-watches.conf /etc/sysctl.d/40-max-user-watches.conf       1
linkfile dotfiles/tmux.conf                  ~/.tmux.conf                            0
linkfile dotfiles/imwheel/imwheelrc          ~/.imwheelrc                            0
linkfile dotfiles/imwheel/Imwheels.dekstop   ~/.config/autostart/Imsheels.desktop    0
#Not linking vscode - syncing through the sync plugin
# linkfile vscode/snippets            ~/.config/Code/User/snippets            0
# linkfile vscode/keybindings.json    ~/.config/Code/User/keybindings.json    0
# linkfile vscode/settings.json       ~/.config/Code/User/settings.json       0


#linkfile emacs/init.el              ~/.emacs                                0
#linkfile luckybackup/MyBackup.profile  ~/.luckyBackup/profiles/MyBackup.profile 0

#linkfile resolvconf-ubuntu/head            /etc/resolvconf/resolv.conf.d/head  1
#linkfile resolvconf-ubuntu/tail            /etc/resolvconf/resolv.conf.d/tail  1
#sudo resolvconf -u;
