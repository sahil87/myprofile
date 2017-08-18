#!/bin/bash
sudo dnf update
sudo dnf install @lxqt-desktop-environment
sudo dnf install @cinnamon-desktop-environment
sudo dnf install @kde-desktop-environment

rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-26.noarch.rpm
rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-nonfree-release-26.noarch.rpm
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install vlc dolphin ffmpegthumbs
dnf install byobu yakuake emacs zsh encfs ldns-utils
dnf install openssh-server wine
systemctl enable sshd.service

#For Intel graphics (Lenovo Laptop)
sudo dnf install libva-intel-driver
#For Nvidia (https://rpmfusion.org/Howto/NVIDIA)
dnf install xorg-x11-drv-nvidia akmod-nvidia "kernel-devel-uname-r == $(uname -r)"
dnf update -y
dnf install vdpauinfo libva-vdpau-driver libva-utils
#Install snap: https://snapcraft.io/docs/core/install-fedora

#ALLOCATE SWAP SPACE:
sudo su
fallocate -l 6G /swapfile6G  OR  dd if=/dev/zero of=/swapfile bs=1M count=1024
chmod 600 /swapfile6G
mkswap /swapfile6G
swapon /swapfile6G
#Add the following entry to fstab:
/swapfile6G    swap    swap    defaults    0 0

#DISABLE SELINUX
Change to SELINUX=permissive in /etc/selinux/config

#Link custom apps menu
git clone git@github.com:sahil87/custom-apps-menu.git ~/code/sahil87/custom-apps-menu
ln -s ~/code/sahil87/custom-apps-menu ~/.local/share/cinnamon/applets/custom-apps-menu@sahil87

#Important symbolic links:
ln -s /mnt ~/
ln -s /mnt/files/code ~/
ln -s ~/Dropbox/code-sync ~/code/code-sync
mv ~/.local/share/applications ~/.local/share/applications-old
ln -s ~/Dropbox/docs/sahil/profile/chrome-desktop-apps ~/.local/share/applications
STORAGE=/mnt/files/storage
ln -s $STORAGE/Android ~/
ln -s $STORAGE/docker /var/lib/docker

gsettings get org.gnome.shell favorite-apps
gsettings set org.gnome.shell favorite-apps "[ \
'slack.desktop', 'chrome-gmgnghphiockcigbjihhdnnmmcbdcjdf-Default.desktop', 'google-chrome.desktop', \
'atom.desktop', 'jetbrains-webstorm.desktop', 'chrome-jijnmpkkfkjaihbhffejemnpbbglahim-Default.desktop', \
'org.gnome.Nautilus.desktop', 'gnome-control-center.desktop', \
'gnome-tweak-tool.desktop', 'org.gnome.Software.desktop', 'firefox.desktop', 'org.gnome.Terminal.desktop' \
]"

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/sahil87/oh-my-zsh/master/tools/install.sh)"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/add_to_zshrc.sh
chsh -s /usr/bin/zsh

#git clone git@github.com:sahil87/z.git ~/.zclone

#Install docker
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf makecache
sudo dnf install -y docker-ce
sudo systemctl start docker
sudo docker run hello-world
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker
curl -L https://github.com/docker/compose/releases/download/1.15.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

#JAVA
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm"
sudo rpm -ivh jdk-8u131-linux-x64.rpm
#Verify java:
#alternatives --config java
#alternatives --config javac
#alternatives --config javaws

#alternatives --list | grep /usr/java
#java -version

#Download groovy sdk from http://groovy-lang.org/download.html
#Unzip it in /mnt/files/storage/groovy-2.4.8
cd /mnt/files/storage
ln -s groovy-2.4.8 groovy

#Install go from https://golang.org/doc/install
wget https://storage.googleapis.com/golang/go1.6.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.6.3.linux-amd64.tar.gz
mkdir ~/code/go

#Install google drive for linux
go get -u github.com/odeke-em/drive/cmd/drive

#Install Ruby (rvm)
command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
\curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles stable

#Make ruby 2.3 default
#rvm list known
#rvm install 2.3
rvm install 2.3-dev
rvm --default use 2.3-dev
gem install bundler

#Install Nodejs
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo dnf -y install nodejs gcc-c++ make
sudo npm install -g http-server eslint react-vr-cli npm-check-updates hexo-cli

#Python
sudo apt install -y python3 python3-pip python3-setuptools
pip3 install virtualenv
pip3 install virtualenvwrapper

#Install ansible
sudo dnf install -y ansible
sudo pip install boto
sudo pip install --upgrade --user boto

#For virtualbox
sudo dnf config-manager \
    --add-repo \
    http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
sudo dnf makecache
sudo dnf install virtualbox-5.1
sudo usermod -a -G vboxusers sahil
#Install VirtualBox Extension Pack from https://www.virtualbox.org/wiki/Downloads

#Unity
#After installing Unity from deb by
#"dpkg -i Unity----.deb" run
#"sudo apt-get -f install" to get all dependencies

sudo apt install -y curl wget nmap whois gitk
sudo apt install -y git gitk
sudo apt install -y encfs openssh-server luckybackup gparted
sudo apt install -y android-tools-adb android-tools-fastboot
sudo apt install -y rygel rygel-preferences
#sudo apt install -y ubuntu-restricted-extras libavcodec-extra libdvd-pkg
#For UI:
sudo apt install -y yakuake xcalib
