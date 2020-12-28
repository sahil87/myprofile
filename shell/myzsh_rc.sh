#!/bin/zsh
#http://zsh.sourceforge.net/Guide/zshguide02.html#l7
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

#ADD PERSONAL BIN AND CURRENT FOLDER TO PATH
CURRENTDIR=${0:a:h}
export MYPROFILEDIR=`realpath $CURRENTDIR/..`
export DIR87=`realpath $MYPROFILEDIR/..`
export CODEDIR=`realpath $MYPROFILEDIR/../..`
export LIFETRACKERDIR=`realpath $DIR87/lifetracker`
export BLOGDIR=`realpath $DIR87/blog2020`
source $LIFETRACKERDIR/shell/envvars.sh
source ~/code/kube/dec-cloud/kubeconfig/env.sh
source ~/code/dec/shell/mybash_vars.sh #v1.1
source $MYPROFILEDIR/bin/ssh-agent-run-script.sh

#ANDROID SETTINGS
GRADLE_USER_HOME=/mnt/files/gradle
ANDROID_HOME=/mnt/files/android/Android
ANDROID_EMULATOR_HOME=/mnt/files/android/.android

#RVM SETTINGS
if
  [[ -s "$HOME/.rvm/scripts/rvm" ]] 
then
  source "$HOME/.rvm/scripts/rvm"
elif
  [[ -s "/usr/local/rvm/scripts/rvm" ]]
then
  source "/usr/local/rvm/scripts/rvm"
fi

#GO Settings
export GOPATH=~/code/go
#Python Settings: Use workon to list/go into a virutal env, deactivate to exit, mkvirtualenv temp to create virtual env
#export WORKON_HOME=~/code/python/.virtualenvs
#export PROJECT_HOME=~/code/python
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#source ~/.local/bin/virtualenvwrapper.sh

#The incantation `typeset -U path', where the -U stands for unique, tells the shell that it should not add anything to $path if it's there already.
typeset -U path
#~/.local/bin is for pythong pip installs done by user without setting virtualenv
#First match wins. So the path that comes earlier has higher precedence
path=($path . ~/.bin ~/.rvm/bin ~/.local/bin /snap/bin $CODEDIR/gmetrivr/dec/bin $MYPROFILEDIR/bin ~/.yarn/bin /usr/local/go/bin ~/code/bin ~/code/go/bin ~/code/bin/concourse/bin ~/Android/Sdk/platform-tools ~/Android/Sdk/tools /mnt/files/storage/groovy/bin $GRADLE_USER_HOME/bin)

#oh-my-zsh SETTINGS:
plugins=(myfunctions git docker kubectl themes ssh-agent man history-substring-search myaliases kubectl helm tmuxinator terraform)
ZSH_THEME="sahil3"
export ZSH=~/.oh-my-zsh
export ZSH_CUSTOM=$CURRENTDIR/custom-zsh
export COMPLETION_WAITING_DOTS="true"
source $ZSH/oh-my-zsh.sh

#OVERRIDE WITH OWN SETTINGS:
#remove up and down arrow bindings for history-substring-search as we want it show normal history
#bindkey -r '^[[A'
#bindkey -r '^[[B'
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

#HISTORY SETTINGS
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000
setopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
#Deliberately don't record commands with atleast one space preceeding them
setopt HIST_IGNORE_SPACE

#EMACS KEYBINDING
bindkey -e

#AUTOCD
setopt autocd

#AUTO COMPLETION
autoload -U compinit
compinit

#AUTOCORRECT
#setopt correctall

#ADVANCED PROMPT
autoload -U promptinit
promptinit

#CHANGE GIT EDITOR
export EDITOR="emacs -nw"
export GIT_EDITOR=$EDITOR

DISABLE_AUTO_TITLE="true"
function precmd () {
  window_title="\033]0;${PWD##*/}\007"
  echo -ne "$window_title"
}
