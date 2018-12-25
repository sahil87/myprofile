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

