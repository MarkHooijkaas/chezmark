: ${PS1_USER:=$USER}
: ${PS1_HOST:=$(hostname)}

if [ "${color_prompt:-yes}" = yes ]; then
    PS1='\[\033[01;32m\]${PS1_USER}@${PS1_HOST}\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${PS1_USER}@${PS1_HOST}:\w\$ '
fi


# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${PS1_USER}@${PS1_HOST}: \w\a\]$PS1"
    ;;
*)
    ;;
esac
