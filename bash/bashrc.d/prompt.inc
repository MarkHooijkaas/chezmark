: ${PS1_USER:=$USER}
: ${PS1_HOST:=$(hostname)}

: ${PS1_PROFILE:=${CHEZ_PROFILE:-${PS1_USER}@${PS1_HOST}}}

if [ "${color_prompt:-yes}" = yes ]; then
    PS1='\[\033[01;32m\]${PS1_PROFILE}\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${PS1_PROFILE}:\w\$ '
fi


# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${PS1_PROFILE}: \w\a\]$PS1"
    ;;
*)
    ;;
esac
