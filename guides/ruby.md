# Installing Ruby (rvm)

## Commands to install Ruby

```sh
curl -sSL https://rvm.io/mpapis.asc | sudo gpg --import -
curl -sSL https://rvm.io/pkuczynski.asc | sudo gpg --import -

curl -sSL https://get.rvm.io | sudo bash -s stable
```

Setup rvm environment:

```sh
sudo usermod -aG rvm $USER
#Log out of the server, and log back in or:
su - ${USER}

source /etc/profile.d/rvm.sh
rvm requirements
```

## Make ruby 2.5 default

```sh
#rvm list known
#rvm install 2.5
rvm install 2.5-dev
rvm --default use 2.5-dev
gem install bundler
```
