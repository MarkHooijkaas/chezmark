: ${XDG_DATA_HOME:=~/.local/share}
: ${XDG_STATE_HOME:=~/.local/state}

function chezmark_verbose() {
    if ${CHEZMARK_VERBOSE:-true}; then
        echo $@
    fi
}

function chezmark_include() {
    chezmark_verbose including $1
    source $1
}

if [ -z "${CONTAINER_ID}" ]; then
  CHEZMARK_PROFILE=$HOSTNAME-$USER
else
  CHEZMARK_PROFILE=$HOSTNAME-${CONTAINER_ID:main}-$USER
fi

echo $CHEZMARK_PROFILE
