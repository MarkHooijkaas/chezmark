export SSH_AUTH_SOCK=${SSH_AUTH_SOCK:-~/.ssh/ssh_auth_sock}
if [[ ! -S $SSH_AUTH_SOCK ]]; then
  eval `ssh-agent -a $SSH_AUTH_SOCK`
  #ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
