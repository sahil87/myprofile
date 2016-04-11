#!/bin/zsh

#ADD PERSONAL BIN TO PATH
CURRENTDIR=${0:a:h}
PARENTDIR=${0:a:h}/..
export PATH=$PARENTDIR/bin:$PATH

plugins=(myfunctions git docker themes ssh-agent man myaliases)
#oh-my-zsh SETTINGS:
ZSH_THEME="sahil2"
export ZSH=~/.oh-my-zsh
export ZSH_CUSTOM=$CURRENTDIR/zsh-custom
source $ZSH/oh-my-zsh.sh

#OVERRIDE WITH OWN SETTINGS:

#HISTORY SETTINGS
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000
setopt hist_ignore_all_dups
#Don't record commands with atleast one space preceeding them
setopt hist_ignore_space

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
