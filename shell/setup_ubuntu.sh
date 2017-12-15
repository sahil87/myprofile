#!/bin/bash

#Link custom apps menu
git clone git@github.com:sahil87/custom-apps-menu.git ~/code/sahil87/custom-apps-menu
ln -s ~/code/sahil87/custom-apps-menu ~/.local/share/cinnamon/applets/custom-apps-menu@sahil87

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/sahil87/oh-my-zsh/master/tools/install.sh)"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/add_to_zshrc.sh
chsh -s /bin/zsh
#git clone git@github.com:sahil87/z.git ~/.zclone

#Important symbolic links:
ln -s /mnt ~/
ln -s /mnt/files/code ~/
#Dropbox:
mv ~/.local/share/applications ~/.local/share/applications-old
ln -s ~/Dropbox/docs/sahil/profile/chrome-desktop-apps ~/.local/share/applications
ln -s ~/Dropbox/code-sync ~/code/code-sync
ln -s ~/Dropbox/books/Music/MuseScore2 ~/Documents/MuseScore2

STORAGE=/mnt/files/storage
ln -s $STORAGE/docker /var/lib/docker
ln -s $STORAGE/VirtualBox\ VMs ~/
ln -s $STORAGE/Android ~/
ln -s $STORAGE/Genymobile_hidden ~/.Genymobile
ln -s $STORAGE/Unity /opt/Unity

#ALLOCATE SWAP SPACE:
sudo su
fallocate -l 9G /swapfile9G #OR  dd if=/dev/zero of=/swapfile bs=1M count=1024
chmod 600 /swapfile9G
mkswap /swapfile9G
swapon /swapfile9G
#Add the following entry to fstab:
/swapfile9G    swap    swap    defaults    0 0

#Unity
#After installing Unity from deb by
#"dpkg -i Unity----.deb" run
#"sudo apt-get -f install" to get all dependencies

#Important tools:
sudo apt install -y byobu emacs zsh zsh-doc git gitk yakuake xcalib
sudo apt install -y curl wget nmap whois
sudo apt install -y encfs openssh-server luckybackup gparted #emacs24-nox
sudo apt install -y android-tools-adb android-tools-fastboot
sudo apt install -y rygel rygel-preferences
sudo apt install -y autoconf automake libtool cmake
#sudo apt install -y ubuntu-restricted-extras libavcodec-extra libdvd-pkg

#VNC and Remmina
sudo apt install -y remmina remmina-plugin-vnc remmina-plugin-rdp remmina-plugin-nx
#Download, install nomachine from https://www.nomachine.com/download/linux&id=1
#To install:
sudo apt install ./nomachine_6.0.66_2_amd64.deb

#Java
sudo echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt install -y oracle-java8-installer oracle-java8-set-default

#Atom
sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt-get update; sudo apt-get install atom

#Install go from https://golang.org/doc/install
wget https://storage.googleapis.com/golang/go1.9.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.9.1.linux-amd64.tar.gz
mkdir ~/code/go

#Install google drive for linux
go get -u github.com/odeke-em/drive/cmd/drive

#Install Hugo
wget https://github.com/gohugoio/hugo/releases/download/v0.31.1/hugo_0.31.1_Linux-64bit.deb
sudo apt install ./hugo_0.31.1_Linux-64bit.deb

#Download groovy sdk from http://groovy-lang.org/download.html
#Unzip it in /mnt/files/storage/groovy-2.4.8
cd /mnt/files/storage
ln -s groovy-2.4.8 groovy

#Install Nodejs
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt install -y nodejs build-essential

#Install docker
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(grep UBUNTU_CODENAME /etc/os-release | awk -F '=' '{ print $2 }') stable edge"
sudo apt-get update
sudo apt-get -y install docker-ce
sudo service docker stop
sudo rm -rf /var/lib/docker; sudo umount /var/lib/docker/aufs
sudo ln -s /mnt/files/storage/docker /var/lib/docker
sudo service docker start
#Add yourself to docker group
sudo groupadd docker
sudo usermod -aG docker sahil
#Docker Compose, find latest version from https://github.com/docker/compose/releases
su -c 'curl -L https://github.com/docker/compose/releases/download/1.17.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose'
sudo chmod +x /usr/local/bin/docker-compose

#Python
sudo apt install -y python3 python3-pip python3-setuptools
pip3 install virtualenv
pip3 install virtualenvwrapper
#Uncomment the following in myzsh_rc.sh if python is installed
#Python Settings: Use workon to list/go into a virutal env, deactivate to exit, mkvirtualenv temp to create virtual env
#export WORKON_HOME=~/code/python/.virtualenvs
#export PROJECT_HOME=~/code/python
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#source ~/.local/bin/virtualenvwrapper.sh

#Install ansible
sudo apt install -y software-properties-common python-jmespath
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible

#For AWS ec2.py and other AWS commands to work
sudo apt-get install -y python python-dev python-pip
pip install --upgrade --user boto awscli

#Configure aws
aws configure
#Enter AWS Access Key ID, AWS Secret Access Key, Default region name [None]: ap-southeast-1
#After that the following commands the docker login command. (remove -e none from the docker login output)
aws ecr get-login


#For virtualbox
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian xenial contrib"
#su -c 'echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib"  > /etc/apt/sources.list.d/virtualbox.list'
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install virtualbox-5.1
sudo usermod -a -G vboxusers sahil

#Digikam
sudo apt install kipi-plugins5 plasma-theme-oxygen
sudo add-apt-repository -y ppa:philip5/extra
sudo apt update; sudo apt install -y digikam5

#Install Ruby (rvm)
command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
\curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles stable

#Make ruby 2.3 default
#rvm list known
#rvm install 2.3
rvm install 2.3-dev
rvm --default use 2.3-dev
gem install bundler

#For running swf files: https://ubuntuforums.org/showthread.php?t=2218732&page=2&p=13040642#post13040642
#So the workaround for this is to edit /usr/share/mime/packages/freedesktop.org.xml and change
#<mime-type type="application/vnd.adobe.flash.movie"> to <mime-type type="application/x-shockwave-flash">
#and then run update-mime-database /usr/share/mime
sudo su
sed  -e "s/<mime-type  type=\"application\/vnd.adobe.flash.movie\">/<mime-type  type=\"application\/x-shockwave-flash\">/g"  /usr/share/mime/packages/freedesktop.org.xml >  /usr/share/mime/packages/freedesktop.org.xml.new
mv /usr/share/mime/packages/freedesktop.org.xml /usr/share/mime/packages/freedesktop.org.xml.original
mv /usr/share/mime/packages/freedesktop.org.xml.new /usr/share/mime/packages/freedesktop.org.xml
echo "Update mime database...";
update-mime-database /usr/share/mime
echo "Mime database updated successfully! ALL DONE!";
