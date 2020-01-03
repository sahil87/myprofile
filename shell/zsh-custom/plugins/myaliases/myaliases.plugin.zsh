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
alias rm="nocorrect rm -i"
alias cp="cp -i"
alias mv="mv -i"

#Git aliases. Rest defined in oh-my-zsh's git plugin
alias gs='git status'
alias gcm='git commit -m'
alias gfu='git fetch upstream'
alias gru='git rebase upstream/master'
alias gup='p; gfu; gru; gp;'
alias gl='gloga'
alias gll='glola'
alias p='git pull'

alias gk='gitk --all&'
alias gx='gitx --all'

alias vr='cd ~/code/gmetrivr/'
alias gmb='cd ~/code/gmetrivr/gmbuild'
alias dos='cd ~/code/gmetrivr/dos'
alias sa='cd ~/code/gmetrivr/sahil'
alias 87='cd $DIR87'
alias myprofile='cd $MYPROFILEDIR'
alias lifetracker='cd $LIFETRACKERDIR'
alias blog='cd $DIR87/bloghexo'

#Needed here instead of a commadn as the env vars created need to be in the running shell
#alias aws-add-sc='source $MYPROFILEDIR/revealed/keys/aws_iam_keys/sportscafe/export.sh'
#alias aws-add-gm='source $MYPROFILEDIR/revealed/keys/aws_iam_keys/gmetri/export.sh'

alias p8='ping 8.8.8.8'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'
alias d="docker"
alias z="sudo mount -t cifs -o username=gmetri,password=gmetri,uid=$UID,gid=$GID //dropbox.lan/share /home/sahil/zDrive"
alias zu="sudo umount /home/sahil/zDrive"

#Command shortcuts
alias kc='kubectl'
alias mux='tmuxinator'
alias ctop='docker run --rm -ti -v /var/run/docker.sock:/var/run/docker.sock quay.io/vektorlab/ctop:latest'
alias gpg2='gpg'
