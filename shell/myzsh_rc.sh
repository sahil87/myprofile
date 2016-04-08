#!/bin/zsh
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
setopt correctall

#ADVANCED PROMPT
#autoload -U promptinit
#promptinit

#ADD PERSONAL BIN TO PATH
CURRENTDIR=${0:a:h}
PARENTDIR=${0:a:h}/..
#typeset -U path
export PATH=$PARENTDIR/bin:$PATH

#COLORS from https://wiki.archlinux.org/index.php/zsh#Colors
#autoload -U colors && colors

#oh-my-zsh SETTINGS:

#$fg[color], $fg_no_bold[color], $fg_bold[color], $reset_color, $reset_color
#black, red, green, blue, yellow, magenta, cyan, white

# PROMPT PIMPIN'
ZSH_THEME="sahil"
ZSH_CUSTOM=$CURRENTDIR/zsh-custom
source $ZSH/oh-my-zsh.sh
## Leave the initial line break or else your commands won't have space between them
#PROMPT="
##${fg_lgreen}%n@${at_underl}%m${at_underloff}${fg_white}[${fg_cyan}%~${fg_white}]
##[${fg_green}%T${fg_white}]:${at_normal}"
##RPROMPT="[%t]"
#PROMPT="%{$fg[green]%}%n@%{$fg[red]%}%m:%{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%#"
#RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

#"${debian_chroot:+($debian_chroot)}${DARK_GRAY}[\A] ${GREEN}\u@${RED}\h:${YELLOW}\w${NORMAL}${CYAN}${GIT_STRING} ${LIGHT_YELLOW}${END_CHARACTER} ${NORMAL}"

#CHANGE GIT EDITOR
export EDITOR="emacsclient -nw"
export GIT_EDITOR=$EDITOR

#ALIASES
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

alias p8='ping 8.8.8.8'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
