#!/bin/bash

#Link custom apps menu
git clone git@github.com:sahil87/custom-apps-menu.git ~/code/sahil87/custom-apps-menu
ln -s ~/code/sahil87/custom-apps-menu ~/.local/share/cinnamon/applets/custom-apps-menu@sahil87

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/sahil87/oh-my-zsh/master/tools/install.sh)"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/add_to_zshrc.sh
chsh -s /usr/bin/zsh
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

#For Gnome shell shortcuts reset:
gsettings get org.gnome.shell favorite-apps
gsettings set org.gnome.shell favorite-apps "[ \
'slack.desktop', 'chrome-gmgnghphiockcigbjihhdnnmmcbdcjdf-Default.desktop', 'google-chrome.desktop', \
'atom.desktop', 'jetbrains-webstorm.desktop', 'chrome-jijnmpkkfkjaihbhffejemnpbbglahim-Default.desktop', \
'org.gnome.Nautilus.desktop', 'gnome-control-center.desktop', \
'gnome-tweak-tool.desktop', 'org.gnome.Software.desktop', 'firefox.desktop', 'org.gnome.Terminal.desktop' \
]"

#Important tools:
sudo dnf update
sudo dnf install @cinnamon-desktop-environment @kde-desktop-environment @lxqt-desktop-environment
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install byobu yakuake emacs zsh encfs ldns-utils openssh-server
dnf install vlc dolphin ffmpegthumbs wine
systemctl enable sshd.service

#Emacs Tree: https://www.emacswiki.org/emacs/NeoTree
#Emacs Projectile:
M-x package-install [RET] projectile [RET]
M-x package-install [RET] minimap [RET]
#For Intel graphics (Lenovo Laptop)
sudo dnf install libva-intel-driver
#For Nvidia (https://rpmfusion.org/Howto/NVIDIA)
dnf install xorg-x11-drv-nvidia xorg-x11-drv-nvidia-cuda akmod-nvidia "kernel-devel-uname-r == $(uname -r)"
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
#After a few runs run the following to remove the most common selinux erors:
sudo ausearch -c 'abrt-action-sav' --raw | audit2allow -M my-abrtactionsav
sudo ausearch -c 'cupsd' --raw | audit2allow -M my-cupsd
sudo ausearch -c 'NetworkManager' --raw | audit2allow -M my-NetworkManager
sudo ausearch -c 'dnsmasq' --raw | audit2allow -M my-dnsmasq
sudo ausearch -c 'sssd' --raw | audit2allow -M my-sssd
sudo ausearch -c 'sshd' --raw | audit2allow -M my-sshd

sudo semodule -X 300 -i my-abrtactionsav.pp
sudo semodule -X 300 -i my-cupsd.pp
sudo semodule -X 300 -i my-NetworkManager.pp
sudo semodule -X 300 -i my-dnsmasq.pp
sudo semodule -X 300 -i my-sssd.pp
sudo semodule -X 300 -i my-sshd.pp

#Java
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm"
sudo rpm -ivh jdk-8u131-linux-x64.rpm
#Verify java:
#alternatives --config java
#alternatives --config javac
#alternatives --config javaws
#alternatives --list | grep /usr/java
#java -version

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

#Install go from https://golang.org/doc/install
wget https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.9.linux-amd64.tar.gz
mkdir ~/code/go

#Install google drive for linux
go get -u github.com/odeke-em/drive/cmd/drive

#Install Hugo
wget https://github.com/gohugoio/hugo/releases/download/v0.26/hugo_0.26_Linux-64bit.tar.gz
tar -xzf hugo_0.26_Linux-64bit.tar.gz\
mv hugo code/go/bin/

#Download groovy sdk from http://groovy-lang.org/download.html
#Unzip it in /mnt/files/storage/groovy-2.4.8
cd /mnt/files/storage
ln -s groovy-2.4.8 groovy

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

#Install Ruby (rvm)
command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
\curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles stable

#Make ruby 2.3 default
#rvm list known
#rvm install 2.3
rvm install 2.3-dev
rvm --default use 2.3-dev
gem install bundler
