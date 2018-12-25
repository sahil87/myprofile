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
sudo apt install tmux
sudo gem install tmuxinator
```

### Tmuxniator settings

> https://github.com/tmuxinator/tmuxinator#completion 

#### Tmux Configs (used as a base for tmuxinator)

```sh 
wget https://raw.githubusercontent.com/sahil87/myprofile/master/dotfiles/tmux.conf
mv tmux.conf ~/.tmux.conf
```

#### Bash settings (only if you use bash)

```sh
https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.bash
mv tmuxinator.bash > ~/.bin/tmuxinator.bash
echo "source ~/.bin/tmuxinator.bash" >> ~/.bashrc
```

#### Zsh settings (only if you use zsh)

```sh
https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh
mv tmuxinator.zsh > ~/.bin/tmuxinator.zsh
echo "source ~/.bin/tmuxinator.zsh" >> ~/.zshrc
```

