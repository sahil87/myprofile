# .bash_profile

# Get the aliases and functions
#if [ -f ~/.bashrc ]; then
#   source ~/.bashrc
#fi

#BASH HISTORY
export HISTSIZE=10000
export HISTFILESIZE=100000
export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"
shopt -s histappend
# Combine multiline commands into one in history
shopt -s cmdhist
# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"


# Prompt
BGREEN='\[\033[1;32m\]'
GREEN='\[\033[0;32m\]'
AGREEN='\[\033[38;5;2m\]'
BRED='\[\033[1;31m\]'
RED='\[\033[0;31m\]'
ARED='\[\033[38;5;1m\]'
BBLUE='\[\033[1;34m\]'
BLUE='\[\033[0;34m\]'
ABLUE='\[\033[38;5;4m\]'
NORMAL='\[\033[00m\]'
export PS1="${debian_chroot:+($debian_chroot)}${AGREEN}\u@${ARED}\h:${ABLUE}\w$ ${NORMAL}"
# Custom bash prompt via kirsle.net/wizards/ps1.html
#export PS1="\[$(tput setaf 2)\]\u@\[$(tput setaf 1)\]\h:\[$(tput setaf 4)\]\W$ \[$(tput sgr0)\]"

alias cd..='cd ../' # Go back 1 directory level (for fast typers)
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .3='cd ../../../'    # Go back 3 directory levels
alias .4='cd ../../../../' # Go back 4 directory levels
alias .5='cd ../../../../../'   # Go back 5 directory levels
alias .6='cd ../../../../../../'  # Go back 6 directory levels

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
alias s="ls"

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
alias gl='git log --all --graph --decorate --oneline'
alias p='git pull'
alias gp='git push'
alias gm='git merge'

alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '
alias g='git '

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
