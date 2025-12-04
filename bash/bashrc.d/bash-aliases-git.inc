export GIT_EDITOR="vi +startinsert"

alias g=git
alias gch="git checkout"
alias gco="git commit"
alias gs="git status"
alias gd="git diff"
alias gss='git submodule foreach git status'
alias gsd='git submodule foreach git diff'
alias gsp='git submodule foreach git push'
alias gsc='git submodule foreach git commit'
alias gsu='git submodule update --remote'
alias gl="git log --all --decorate --oneline --graph"
alias gll='git log --pretty=format:"%h%x09%an%x09%ad%x09%s"'

complete -F _complete_alias g
complete -F _complete_alias gch
complete -F _complete_alias gco
complete -F _complete_alias gs
complete -F _complete_alias gd
