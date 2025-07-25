

alias k=kubectl
#alias ka='kubectl --context=acc --namespace'
#alias kp='kubectl --context=prd --namespace'
alias kt="kubectl --context tst"
alias ka="kubectl --context acc"
alias kp="kubectl --context prd"


complete -F _complete_alias k
complete -F _complete_alias ka
complete -F _complete_alias kt
complete -F _complete_alias kp
