#!/bin/bash
sudo apt-get install -y byobu emacs24-nox emacs zsh zsh-doc
sudo apt-get install -y curl wget nmap whois
sudo apt-get install -y git gitk
sudo apt-get install -y encfs
sudo apt-get install -y android-tools-adb android-tools-fastboot

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/sahil87/oh-my-zsh/master/tools/install.sh)"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.zshrc
source $DIR/add_to_zshrc.sh
chsh -s /bin/zsh
