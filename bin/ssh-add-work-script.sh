#Should be run as "source thisscript" to be able set env vars
#Start using the alias ssh-add-work

#Load personal ssh key into ssh-agent
#set -x

CURRENT_SCRIPT=${BASH_SOURCE[0]:-$0}
CURRENT_DIR="$( cd $( dirname ${CURRENT_SCRIPT} ) && pwd )"
. $CURRENT_DIR/ssh-agent-run-script.sh

KEY_PATH=~/.ssh/work/id_ed25519_work

#Add key only if it desn't already exist in agent
ssh-add -l | grep -q `ssh-keygen -lf $KEY_PATH | awk '{print $2}'` || ssh-add $KEY_PATH

#List keys
echo ""
echo "Current keys:"; 
ssh-add -l;
