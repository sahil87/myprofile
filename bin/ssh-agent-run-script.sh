#Should be run as "source thisscript" to be able set env vars
#Need to add alias ssh-agent-run="source PATH_TO_THIS_SCRIPT" in bash/zsh profile

# Ensure agent is running
echo "Trying to use SSH_AGENT_PID from current env"
ssh-add -l
if [[ "$?" == 2 ]]; then
  # Could not open a connection to your authentication agent.
  echo "Unable to find SSH_AGENT_PID in env, trying to load stored info"

  #Step 1: Try loading stored agent connection info.
  test -r ~/.ssh-agent && \
    source ~/.ssh-agent
    #eval "$(<~/.ssh-agent)"

  ssh-add -l
  if [[ "$?" == 2 ]]; then
    echo "Unable to load stored info or use stored SSH_AGENT_PID info, starting new agent"
    # Start agent and store agent connection info.
    (umask 066; ssh-agent > ~/.ssh-agent)
    source ~/.ssh-agent
    #eval "$(<~/.ssh-agent)"
  fi
fi