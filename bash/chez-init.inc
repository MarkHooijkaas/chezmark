: ${XDG_DATA_HOME:=~/.local/share}
: ${XDG_STATE_HOME:=~/.local/state}

function _chez_verbose() {
    if ${CHEZ_VERBOSE:-false}; then
        echo $@
    fi
}
function _chez_debug() {
    if ${CHEZ_DEBUG:-false}; then
        echo $@
    fi
}

function _chez_include() {
    if [ -f  $1 ]; then
      _chez_verbose including $1
      source $1
      return 0
    else
      _chez_verbose skipping $1
      return 1
    fi
}

function _chez_include_all() {
  if ${CHEZ_INCLUDE_ALL:true}; then
    for f in $CHEZ_HOME/bash/bashrc.d/*; do
      _chez_include $f
    done
  fi
}


if [ -z "${CONTAINER_ID}" ]; then
  CHEZ_PROFILE=$USER@$HOSTNAME
else
  CHEZ_PROFILE=$USER@$HOSTNAME-${CONTAINER_ID:main}
fi

echo $CHEZ_PROFILE
