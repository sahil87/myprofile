# Setup

## Important tools:

* Install chrome from the chrome website
* Install survival essentials:

```bash
sudo apt install -y emacs zsh zsh-doc git gitk tig guake hplip-gui encfs openssh-server gparted
sudo apt install -y curl wget nmap whois iftop tcpdump net-tools
#net-tools Installs arp, ifconfig, netstat, rarp, nameif and route, plipconfig, slattach, mii-tool, iptunnel, ipmaddr
sudo apt install -y autoconf automake libtool cmake
#sudo apt install -y android-tools-adb android-tools-fastboot #rygel rygel-preferences
```

## Setup ZSH: Install oh-my-zsh (Run from shell folder)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
source ./setup/add_to_zshrc.sh  #chsh -s /bin/zsh - already done above
```

Then logout and login

## Link files

```bash
mkdir ~/.ssh
cd $MYPROFILEDIR; ./dotfiles/linkfiles_ubuntu.sh;
```

## VSCode

* VSCode flow plugin needs node installed, so install node from [here](https://github.com/sahil87/myprofile/blob/master/guides/node.md)
* Install vscode: `sudo apt install -y snapd; sudo snap install code --classic`
  * Open VSCode. Install the plugin "Settings Sync". Restart VSCode.
  * Press Shift + Alt + D to start first download. Choose a github token and gist id and reuse them for every new install.

## Important symbolic links

```bash
ln -s /mnt ~/
ln -s /mnt/files/code ~/
ln -s /mnt/storage/Dropbox ~/
ln -s ~/Dropbox/docs-sahil/code-sync ~/code
ln -s /mnt/files/android/Android ~/
ln -s /mnt/files/android/.android ~/
sudo ln -s /mnt/files/docker /var/lib/docker
```

## Dropbox

* `ln -s /mnt/storage/Dropbox ~/`
* `sudo apt install -y dropbox nemo-dropbox`
* Setup dropbox by Menu > Internet > Dropbox
* Setup up selective sync and remove unneeded folders

## SSH

* Copy the correct keys to .ssh

## Chrome Remote Desktop

* Go to https://remotedesktop.google.com/access
* Run the following:

```bash
sudo apt install mint-meta-xfce
echo 'exec /usr/bin/xfce4-session "xfce4-session --session=xfce4"' >> ~/.chrome-remote-desktop-session
echo 'export CHROME_REMOTE_DESKTOP_DEFAULT_DESKTOP_SIZES="1920x1200"' | sudo tee -a /etc/environment > /dev/null
#echo 'exec /etc/mdm/Xsession "cinnamon-session-cinnamon2d"' >> ~/.chrome-remote-desktop-session
```

* Install Chrome Remote Desktop app from chrome app store
* Download chrome remote desktop host component from the following links
* Restart Mint
* Enable desktop sharing from Chrome Remote Desktop app. It asks to set a pin to access the computer

### ALLOCATE SWAP SPACE

```bash
sudo su
fallocate -l 4G /swapfile4G #OR  dd if=/dev/zero of=/swapfile bs=1M count=1024
chmod 600 /swapfile4G
mkswap /swapfile4G
swapon /swapfile4G
echo "/swapfile4G    swap    swap    defaults    0 0"  | sudo tee -a /etc/fstab > /dev/null
```

### Installing wine

https://computingforgeeks.com/how-to-install-wine-4-on-ubuntu-18-04-linux-mint-19/

### AWS CLI

Use steps from [here](https://github.com/sahil87/myprofile/blob/master/guides/awscli.md)

### Install Java

Use steps from [here](https://github.com/sahil87/myprofile/blob/master/guides/java.md)

### Install Go and Hugo

Use steps from [here](https://github.com/sahil87/myprofile/blob/master/guides/go.md)

### Install Nodejs

Use steps from [here](https://github.com/sahil87/myprofile/blob/master/guides/node.md)

### Install docker

Use steps from [here](https://github.com/sahil87/myprofile/blob/master/guides/docker.md)

### Install virtualbox

Use steps from [here](https://github.com/sahil87/myprofile/blob/master/guides/virtualbox.md)

### Install Ruby(rvm) and Tmuxinator

Use steps from [here](https://github.com/sahil87/myprofile/blob/master/guides/ruby.md)

### Install Ansible

Use steps from [here](https://github.com/sahil87/myprofile/blob/master/guides/ansible.md)

### VNC and Remmina

`sudo apt install -y remmina remmina-plugin-vnc remmina-plugin-rdp remmina-plugin-nx`

Download, install nomachine from [here](https://www.nomachine.com/download/linux&id=1). To install: `sudo apt install ./nomachine_6.0.66_2_amd64.deb`

### Google drive for linux

`go get -u github.com/odeke-em/drive/cmd/drive`

Download groovy sdk from [here](http://groovy-lang.org/download.html). Unzip it in /mnt/files/storage/groovy-2.4.8. `cd /mnt/files/storage; ln -s groovy-2.4.8 groovy`

### Python

```bash
sudo apt install -y python3 python3-pip python3-setuptools
pip3 install virtualenv
pip3 install virtualenvwrapper
```

> Python Settings: Use workon to list/go into a virutal env, deactivate to exit, mkvirtualenv temp to create virtual env

Put the following in myzsh_rc.sh if python is installed

```bash
export WORKON_HOME=~/code/python/.virtualenvs
export PROJECT_HOME=~/code/python
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source ~/.local/bin/virtualenvwrapper.sh
```
