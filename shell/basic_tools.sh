#!/bin/bash
sudo apt install -y byobu emacs zsh zsh-doc #emacs24-nox
sudo apt install -y curl wget nmap whois
sudo apt install -y git gitk
sudo apt install -y encfs
sudo apt install -y android-tools-adb android-tools-fastboot
sudo apt install -y ubuntu-restricted-extras libavcodec-extra libdvd-pkg

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/sahil87/oh-my-zsh/master/tools/install.sh)"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm ~/.zshrc
source $DIR/add_to_zshrc.sh
chsh -s /bin/zsh

#Install Ruby (rvm)
command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
\curl -sSL https://get.rvm.io | bash -s stable --ruby -- --ignore-dotfiles

#Make ruby 2.2 default
rvm --default use 2.2

#fluentd #Works on Ruby 2.2
gem install fluentd --no-ri --no-rdoc
fluent-gem install fluent-plugin-influxdb
gem install -V fluentd-ui

docker run -p 8083:8083 -p 8086:8086 \
    -e INFLUXDB_GRAPHITE_ENABLED=true \
    influxdb

docker run -d --name=grafana -p 3000:3000 --net="host" grafana/grafana
