# Installing VirtualBox

## Steps

```sh
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian xenial contrib"
#su -c 'echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib"  > /etc/apt/sources.list.d/virtualbox.list'
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install virtualbox-5.2
sudo apt install dkms
sudo usermod -a -G vboxusers $USER
```

Got steps from [here](https://www.virtualbox.org/wiki/Linux_Downloads)