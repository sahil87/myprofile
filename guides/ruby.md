# Installing Ruby (rvm)

## Commands to install Ruby

```sh
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
\curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles stable
```

## Make ruby 2.5 default

```sh
#rvm list known
#rvm install 2.5
rvm install 2.5-dev
rvm --default use 2.5-dev
sudo gem install bundler
```

## Install tmuxinator

```sh
apt install tmux
gem install tmuxinator
```

### Tmuxniator settings

```sh 
wget https://raw.githubusercontent.com/sahil87/myprofile/master/dotfiles/tmux.conf
mv tmux.conf ~/.tmux.conf
```
