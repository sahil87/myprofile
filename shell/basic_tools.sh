#!/bin/bash
sudo apt install -y byobu emacs zsh zsh-doc #emacs24-nox
sudo apt install -y curl wget nmap whois
sudo apt install -y git gitk
sudo apt install -y encfs
sudo apt install -y android-tools-adb android-tools-fastboot
#sudo apt install -y ubuntu-restricted-extras libavcodec-extra libdvd-pkg

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom

#Link custom apps menu
git clone git@github.com:sahil87/custom-apps-menu.git ~/code/sahil87/custom-apps-menu
ln -s ~/code/sahil87/custom-apps-menu ~/.local/share/cinnamon/applets/custom-apps-menu@sahil87

#Install go from https://golang.org/doc/install
wget https://storage.googleapis.com/golang/go1.6.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.6.3.linux-amd64.tar.gz
mkdir ~/code/go

#Install google drive for linux
go get -u github.com/odeke-em/drive/cmd/drive

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/sahil87/oh-my-zsh/master/tools/install.sh)"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.zshrc
source $DIR/add_to_zshrc.sh
chsh -s /bin/zsh

#Install Ruby (rvm)
command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
\curl -sSL https://get.rvm.io | bash -s stable --ruby -- --ignore-dotfiles

#Make ruby 2.3 default
rvm --default use 2.3

docker run -p 8083:8083 -p 8086:8086 \
    -e INFLUXDB_GRAPHITE_ENABLED=true \
    influxdb

docker run -d --name=grafana -p 3000:3000 --net="host" grafana/grafana
