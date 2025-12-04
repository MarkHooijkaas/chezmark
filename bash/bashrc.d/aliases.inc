

# https://askubuntu.com/questions/1042234/modifying-the-color-of-grep
export GREP_COLORS='fn=2'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias l="ls -la"
alias m=less
alias e="vi +startinsert"
alias gr='grep -r --exclude-dir=.git/'
#alias gr='grep -r --exclude-dir=.git/objects'

alias pg='pgrep -f'

# cut fields separated by arbitrary whitespace
# https://stackoverflow.com/questions/4367304/unix-need-to-cut-a-file-which-has-multiple-blanks-as-delimiter-awk-or-cut
alias fcut="tr -s ' ' | cut -d ' '"

complete -F _complete_alias l
complete -F _complete_alias m
complete -F _complete_alias e
complete -F _complete_alias gr

alias os='grep PRETTY /etc/os-release'
alias reload="source ~/.bashrc"

_chez_alias b brew
_chez_alias d distrobox
_chez_alias cm chezmoi
