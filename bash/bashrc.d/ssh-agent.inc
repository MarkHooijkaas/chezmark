export SSH_AUTH_SOCK=~/.ssh/sockets/ssh-agent
if [ -f ~/bin/start-ssh-agent-when-not-running ]; then
  ~/bin/start-ssh-agent-when-not-running $SSH_AUTH_SOCK
fi
