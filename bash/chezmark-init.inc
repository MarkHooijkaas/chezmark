: ${XDG_DATA_HOME:=~/.local/share}
: ${XDG_STATE_HOME:=~/.local/state}

function chezmark_verbose() {
    if ${CHEZMARK_VERBOSE:-true}; then
        echo $@
    fi
}
function chezmark_debug() {
    if ${CHEZMARK_DEBUG:-false}; then
        echo $@
    fi
}

function chezmark_include() {
    if [ -f  $1 ]; then
      chezmark_verbose including $1
      source $1
      return 0
    else
      chezmark_verbose skipping $1
      return 1
    fi
}

function chezmark_include_all() {
  if ${CHEZMARK_INCLUDE_ALL:true}; then
    for f in $CHEZMARK_HOME/bash/bashrc.d/*; do
      chezmark_include $f
    done
  fi
}


if [ -z "${CONTAINER_ID}" ]; then
  CHEZMARK_PROFILE=$USER@$HOSTNAME
else
  CHEZMARK_PROFILE=$USER@$HOSTNAME-${CONTAINER_ID:main}
fi

echo $CHEZMARK_PROFILE
