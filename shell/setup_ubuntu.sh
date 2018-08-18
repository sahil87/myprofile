#!/bin/bash

## AWS CLI:
Use steps from [here](https://github.com/sahil87/myprofile/blob/master/guides/awscli.md)

## Install Java
Use steps from [here](https://github.com/sahil87/myprofile/blob/master/guides/java.md)

## Install Go and Hugo
Use steps from [here](https://github.com/sahil87/myprofile/blob/master/guides/go.md)

## Install Nodejs
Use steps from [here](https://github.com/sahil87/myprofile/blob/master/guides/node.md)

## Install docker
Use steps from [here](https://github.com/sahil87/myprofile/blob/master/guides/docker.md)

## Install virtualbox
Use steps from [here](https://github.com/sahil87/myprofile/blob/master/guides/virtualbox.md)

## Link custom apps menu
git clone git@github.com:sahil87/custom-apps-menu.git ~/code/sahil87/custom-apps-menu
ln -s ~/code/sahil87/custom-apps-menu ~/.local/share/cinnamon/applets/custom-apps-menu@sahil87

#Install oh-my-zsh (Run from shell folder)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/sahil87/oh-my-zsh/master/tools/install.sh)"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/add_to_zshrc.sh
chsh -s /bin/zsh
#git clone git@github.com:sahil87/z.git ~/.zclone

#Making chrome-remote-desktop work

#1. Install xfce by installing "mint-meta-xfce" from package manager
#2. Run the following:
echo 'exec /usr/bin/xfce4-session "xfce4-session --session=xfce4"' >> ~/.chrome-remote-desktop-session
##echo 'exec /etc/mdm/Xsession "cinnamon-session-cinnamon2d"' >> ~/.chrome-remote-desktop-session
sudo su; echo 'export CHROME_REMOTE_DESKTOP_DEFAULT_DESKTOP_SIZES="1920x1200"' >> /etc/environment
# Install Chrome Remote Desktop app from chrome app store
# Download chrome remote desktop host component from the following links
# Restart Mint
# Enable desktop sharing from Chrome Remote Desktop app. It asks to set a pin to access the computer

#Important symbolic links:
ln -s /mnt ~/
ln -s /mnt/files/code ~/
#Dropbox:
mv ~/.local/share/applications ~/.local/share/applications-old
ln -s ~/Dropbox/docs/sahil/profile/chrome-desktop-apps ~/.local/share/applications
ln -s ~/Dropbox/docs/sahil/code-sync ~/code/code-sync
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
#Install chrome, vscode, vivaldi
sudo apt install -y byobu emacs zsh zsh-doc git gitk yakuake xcalib hplip-gui  #emacs24-nox
sudo apt install -y curl wget nmap whois encfs openssh-server gparted #luckybackup
sudo apt install -y autoconf automake libtool cmake
sudo apt install -y android-tools-adb android-tools-fastboot rygel rygel-preferences
#sudo apt install -y ubuntu-restricted-extras libavcodec-extra libdvd-pkg

#VNC and Remmina
sudo apt install -y remmina remmina-plugin-vnc remmina-plugin-rdp remmina-plugin-nx
#Download, install nomachine from https://www.nomachine.com/download/linux&id=1
#To install:
sudo apt install ./nomachine_6.0.66_2_amd64.deb

#Atom
sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt-get update; sudo apt-get install atom

#Install google drive for linux
go get -u github.com/odeke-em/drive/cmd/drive

#Download groovy sdk from http://groovy-lang.org/download.html
#Unzip it in /mnt/files/storage/groovy-2.4.8
cd /mnt/files/storage
ln -s groovy-2.4.8 groovy

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
