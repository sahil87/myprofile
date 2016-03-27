#!/bin/bash
# .bash_profile

#If this script is included in bash_profile
#if [ -f ~/.bashrc ]; then
#   source ~/.bashrc
#fi

PARENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/../ && pwd )"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PATH=$PARENTDIR/bin:./:$PATH
export PATH

#BASH HISTORY
export HISTSIZE=10000
export HISTFILESIZE=100000
#export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"
export PROMPT_COMMAND="history -a; history -n;" #removed original $PROMPT_COMMAND to solve extra spaces in Amazon Linux
shopt -s histappend
# Combine multiline commands into one in history
shopt -s cmdhist
# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"


# Prompt. http://misc.flogisoft.com/bash/tip_colors_and_formatting
# Custom bash prompt via kirsle.net/wizards/ps1.html
RED='\[\e[31m\]'
GREEN='\[\e[32m\]'
YELLOW='\[\e[33m\]'
BLUE='\[\e[34m\]'
BOLD_BLUE='\[\e[1;34m\]'
MAGENTA='\[\e[35m\]'
CYAN='\[\e[36m\]'
LIGHT_GRAY='\[\e[37m\]'
DARK_GRAY='\[\e[90m\]'
LIGHT_YELLOW='\[\e[93m\]'
NORMAL='\[\e[0m\]'
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_DESCRIBE_STYLE=branch
source $DIR/mybash_git-prompt.sh
GIT_STRING='$(__git_ps1 " [%s]")'
END_CHARACTER=$'\u26A1'
export PS1="${debian_chroot:+($debian_chroot)}${DARK_GRAY}[\A] ${GREEN}\u@${RED}\h:${YELLOW}\w${NORMAL}${CYAN}${GIT_STRING} ${LIGHT_YELLOW}${END_CHARACTER} ${NORMAL}"
#export PS1="${debian_chroot:+($debian_chroot)}${DARK_GRAY}[\A] ${GREEN}\u@${RED}\h:${YELLOW}\w${NORMAL} ${CYAN}${GIT_STRING}${LIGHT_GRAY}$ ${NORMAL}"
#export PS1="\[$(tput setaf 2)\]\u@\[$(tput setaf 1)\]\h:\[$(tput setaf 4)\]\W$ \[$(tput sgr0)\]"

alias cd..='cd ../' # Go back 1 directory level (for fast typers)
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .3='cd ../../../'    # Go back 3 directory levels
alias .4='cd ../../../../' # Go back 4 directory levels
alias .5='cd ../../../../../'   # Go back 5 directory levels
alias .6='cd ../../../../../../'  # Go back 6 directory levels

alias p8='ping 8.8.8.8'

alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'

#Ls improvements
alias ls='ls -F --color=auto'
alias ll='ls -hl'
alias lla='ls -ahl'
alias sl="ls"
alias l="ls"

# Make these commands ask before clobbering a file. Use -f to override.
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

#alias v='cd ~/code/vagrant/machines; vagrant up sc1; vagrant ssh sc1;'
#alias vh='cd ~/code/vagrant/machines; vagrant halt sc1;'

alias gs='git status '
alias ga='git add '
alias gaa='git add -A'
alias gb='git branch '
alias gbv='git branch -vv'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias go='git checkout '
alias gco='git checkout '
alias gl='git log --all --graph --decorate --oneline'
alias p='git pull'
alias gp='git push'
alias gm='git merge'
alias gm='git remote'

alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '
alias g='git'

alias sc='cd ~/code/sportscafe/'
alias 87='cd $DIR/..'
alias aws-add-creds='source $DIR/../revealed/keys/aws_iam_keys/sportscafe/export.sh'

# Autocomplete for 'g' as well
complete -o default -o nospace -F _git g

#Functions
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}

function swap()
{ # Swap 2 filenames around, if they exist (from Uzi's bashrc).
    local TMPFILE=tmp.$$

    [ $# -ne 2 ] && echo "swap: 2 arguments needed" && return 1
    [ ! -e $1 ] && echo "swap: $1 does not exist" && return 1
    [ ! -e $2 ] && echo "swap: $2 does not exist" && return 1

    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}

mkcd() {
        if [ $# != 1 ]; then
                echo "Usage: mkcd <dir>"
        else
                mkdir -p $1 && cd $1
        fi
}