#!/bin/bash
#In .bashrc

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

#To support emacs and byobu
export TERM=xterm-256color

PARENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/../ && pwd )"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#RVM SETTINGS
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

PATH=$PATH:~/.rvm/bin:.:$PARENTDIR/bin
export PATH

#Automatically dir into folder names
shopt -s autocd
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
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Prompt. http://misc.flogisoft.com/bash/tip_colors_and_formatting
# Custom shell prompt via kirsle.net/wizards/ps1.html
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
source /usr/lib/git-core/git-sh-prompt
GIT_STRING='$(__git_ps1 " [%s]")'
#END_CHARACTER=$'\u26A1' #Lightning
END_CHARACTER='\$'
test -f /.dockerinit && END_CHARACTER='&'
PS1="${DARK_GRAY}[\A] ${GREEN}\u@${RED}\h:${YELLOW}\w${NORMAL}${CYAN}${GIT_STRING} ${LIGHT_YELLOW}${END_CHARACTER} ${NORMAL}"
export PS1
#export PS1="${DARK_GRAY}[\A] ${GREEN}\u@${RED}\h:${YELLOW}\w${NORMAL} ${CYAN}${GIT_STRING}${LIGHT_GRAY}$ ${NORMAL}"
#export PS1="\[$(tput setaf 2)\]\u@\[$(tput setaf 1)\]\h:\[$(tput setaf 4)\]\W$ \[$(tput sgr0)\]"

# Autocomplete for 'g' as well
complete -o default -o nospace -F _git g

source $DIR/mybash_rc_addon.sh

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
