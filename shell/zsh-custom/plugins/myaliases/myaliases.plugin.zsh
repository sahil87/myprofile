#!/bin/zsh
alias cd..='cd ../' # Go back 1 directory level (for fast typers)
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .3='cd ../../../'    # Go back 3 directory levels
alias .4='cd ../../../../' # Go back 4 directory levels
alias .5='cd ../../../../../'   # Go back 5 directory levels
alias .6='cd ../../../../../../'  # Go back 6 directory levels

#Ls improvements
alias ls='ls -F --color=auto'
alias ll='ls -hl'
alias lla='ls -ahl'
alias sl="ls"
alias l="ls"

# Make these commands ask before clobbering a file. Use -f to override.
alias rm="nocorrect rm -i"
alias cp="cp -i"
alias mv="mv -i"

#Git aliases. Rest defined in oh-my-zsh's git plugin
alias gs='git status'
alias gcm='git commit -m'
alias gfu='git fetch upstream'
alias go='git checkout'
alias gl='git log --all --graph --decorate --oneline'
alias p='git pull'

alias gk='gitk --all&'
alias gx='gitx --all'

alias sc='cd ~/code/sportscafe/'
alias 87='cd $CURRENTDIR/..'
alias aws-add-creds='source $DIR/../revealed/keys/aws_iam_keys/sportscafe/export.sh'

alias p8='ping 8.8.8.8'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias ds='du -h --max-depth=1'
alias d="docker"