
: ${CHEZ_HOME:=$(dirname $(dirname ${BASH_SOURCE[0]}))}
export CHEZ_HOME

source $CHEZ_HOME/bash/chez-init.inc

_chez_include .config/local/bashrc-$CHEZ_PROFILE.inc
_chez_include $CHEZ_HOME/bash/local/bashrc-$CHEZ_PROFILE.inc

if ${CHEZ_INCLUDE_ALL:true}; then
  for f in $CHEZ_HOME/bash/bashrc.d/*; do
    _chez_include $f
  done
fi
