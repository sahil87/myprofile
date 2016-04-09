#!/bin/bash
sudo apt-get install -y byobu emacs24-nox emacs zsh zsh-doc
sudo apt-get install -y curl wget nmap whois
udo apt-get install -y git gitk
sudo apt-get install -y encfs

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/sahil87/oh-my-zsh/master/tools/install.sh)"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.zshrc
source $DIR/add_to_zshrc.sh
chsh -s /bin/zsh
