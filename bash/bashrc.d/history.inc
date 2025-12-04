
# see answer of rouble in
# https://unix.stackexchange.com/questions/1288/preserve-bash-history-in-multiple-terminal-windows
HISTSIZE=100000
HISTFILESIZE=$HISTSIZE
HISTCONTROL=ignorespace:ignoredups

#_bash_history_sync() {
#  builtin history -a         #1
#  HISTFILESIZE=$HISTSIZE     #2
#}

#_bash_history_sync_and_reload() {
#  builtin history -a         #1
#  HISTFILESIZE=$HISTSIZE     #2
  #builtin history -c         #3
  #builtin history -r         #4
#}

#history() {                  #5
#  _bash_history_sync_and_reload
#  builtin history "$@"
#}


mkdir -p ${XDG_STATE_HOME}/chez
CHEZ_BASH_ETERNAL_HISTORY=$XDG_STATE_HOME/chez/bash_eternal_history


export HISTTIMEFORMAT="%y/%m/%d %H:%M:%S%t"
PROMPT_COMMAND='history 1 >>$CHEZ_BASH_ETERNAL_HISTORY'
#PROMPT_COMMAND="_bash_history_sync;$PROMPT_COMMAND"

alias h='grep <$CHEZ_BASH_ETERNAL_HISTORY'
#alias hm='grep <$CHEZ_BASH_ETERNAL_HISTORY | less'
#alias ht='grep <$CHEZ_BASH_ETERNAL_HISTORY | tail'
