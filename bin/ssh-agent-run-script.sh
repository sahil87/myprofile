#Should be run as "source thisscript" to be able set env vars
#Need to add alias ssh-agent-run="source PATH_TO_THIS_SCRIPT" in bash/zsh profile

if [ -z "$SSH_AUTH_SOCK" ]
then
   # Check for a currently running instance of the agent
   RUNNING_AGENT="`ps -ax | grep 'ssh-agent -s' | grep -v grep | wc -l | tr -d '[:space:]'`"
   if [ "$RUNNING_AGENT" = "0" ]
   then
        # Launch a new instance of the agent
        ssh-agent -s &> ~/.ssh/ssh-agent
   fi
   eval `cat ~/.ssh/ssh-agent`
fi
