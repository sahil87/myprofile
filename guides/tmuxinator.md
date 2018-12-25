# Installing and configuring Tmuxinator

First install Ruby: https://github.com/sahil87/myprofile/blob/master/guides/ruby.md

### Install Tmux and Tmuxinator

```sh
sudo apt install tmux
sudo gem install tmuxinator
```

### Tmuxniator configuration (important)

> Reference: https://github.com/tmuxinator/tmuxinator#completion 

##### Tmux Configs (used as a base for tmuxinator)

```sh 
wget https://raw.githubusercontent.com/sahil87/myprofile/master/dotfiles/tmux.conf
mv tmux.conf ~/.tmux.conf
```

##### Bash settings (only if you use bash)

```sh
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.bash
mv tmuxinator.bash > ~/.bin/tmuxinator.bash
echo "source ~/.bin/tmuxinator.bash" >> ~/.bashrc
```

##### Zsh settings (only if you use zsh)

```sh
wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh
mv tmuxinator.zsh > ~/.bin/tmuxinator.zsh
echo "source ~/.bin/tmuxinator.zsh" >> ~/.zshrc
```
