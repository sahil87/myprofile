# Installing Java

## Commands to install java

```sh
sudo echo oracle-java9-installer shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt install -y oracle-java9-installer oracle-java9-set-default
```
