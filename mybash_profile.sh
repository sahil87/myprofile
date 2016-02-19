# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

export HISTSIZE=10000
export HISTFILESIZE=100000
export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

PS1=' \[\033[01;32m\]\u\[\033[01;34m\]@\[\033[01;31m\]\h\[\033[00;34m\]{\[\033[01;34m\]\w\[\033[00;34m\]}\[\033[01;32m\]:\[\033[00m\]'

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

# Make these commands ask before clobbering a file. Use -f to override.
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

alias v='cd ~/code/vagrant/machines; vagrant up sc1; vagrant ssh sc1;'
alias vh='cd ~/code/vagrant/machines; vagrant halt sc1;'

alias gl='git log --all --graph --decorate --oneline'
alias ga='git add'
alias gaa='git add -A'
alias gcm='git commit -m'
alias p='git pull'
alias gp='git push'
alias gs='git status'
alias gc='git checkout'
alias gm='git merge'
alias gd='git diff'
alias gb='git branch -vv'

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
