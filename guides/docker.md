# Installing Docker

## Install docker-ce

Steps updated from [here](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

```sh
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(grep UBUNTU_CODENAME /etc/os-release | awk -F '=' '{ print $2 }') stable"
sudo apt update -y
sudo apt install -y docker-ce
```

## Make sure the partition holding /var/lib/docker has enough free space

In the following steps:

1. Replace `/mnt/file` with the mount point of the partition the contains enough free space
1. Replace `/storage/docker` with the folder in that partition where you want to store docker related files

```sh
sudo service docker stop
sudo rm -rf /var/lib/docker; sudo umount /var/lib/docker/aufs
sudo ln -s /mnt/files/storage/docker /var/lib/docker
sudo service docker start
```

## Add yourself to the docker group

```sh
sudo groupadd docker
sudo usermod -aG docker $USER
```

## Install Docker Compose

Find latest version from https://github.com/docker/compose/releases

```sh
sudo su -c 'curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose'
sudo chmod +x /usr/local/bin/docker-compose
```
