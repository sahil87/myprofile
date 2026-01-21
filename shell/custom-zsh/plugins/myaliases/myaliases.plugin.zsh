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
alias ls='ls --color=auto'
alias ll='ls -Fhl'
alias lla='ls -Fahl'
alias sl="ls"
alias l="ls"

# Make these commands ask before clobbering a file. Use -f to override.
alias rm="nocorrect rm -i" #nocorrect doesn't work in bash
#alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

#Git aliases. Rest defined in oh-my-zsh's git plugin
# alias gs='git status' # Use gst
# alias gcm='git commit -m' # Use gsam
alias gloga='git log --oneline --decorate --graph --all'
alias glola='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset" --all'
alias gl='gloga'
alias gll='glola'
alias p='git pull'

alias gk='gitk --all&'
alias gx='gitx --all'

alias c='cd ~/code/'
alias 87='cd $DIR87'
# alias myprofile='cd $MYPROFILE_DIR'
# alias lifetracker='cd $LIFETRACKER_DIR'
alias blog='cd $DIR87/bloghexo'
alias vr='cd ~/code/gmetrivr/'
alias xr='cd ~/code/gmetrixr/'
alias teaxr='cd ~/code/teaxr/'
alias brx='cd ~/code/brx/'
alias sms='cd ~/code/sms/'

#Needed here instead of a commadn as the env vars created need to be in the running shell
#alias aws-add-sc='source $MYPROFILE_DIR/revealed/keys/aws_iam_keys/sportscafe/export.sh'
#alias aws-add-gm='source $MYPROFILE_DIR/revealed/keys/aws_iam_keys/gmetri/export.sh'
alias ssh-add-personal="source $MYPROFILE_DIR/bin/ssh-add-personal-script.sh"
alias ssh-add-work="source $MYPROFILE_DIR/bin/ssh-add-work-script.sh"

alias p8='ping 8.8.8.8'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias b="byobu"
alias d="docker"
# alias dk='docker rm -f `docker ps -aq`'
alias z="sudo mount -t cifs -o username=gmetri,password=gmetri,uid=$UID,gid=$GID //dropbox.lan/share /home/sahil/zDrive"
alias zu="sudo umount /home/sahil/zDrive"

#Command shortcuts
alias kc='kubectl'
alias mux='tmuxinator'
alias ctop='docker run --rm -ti -v /var/run/docker.sock:/var/run/docker.sock quay.io/vektorlab/ctop:latest'
alias gpg2='gpg'
