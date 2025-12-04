
: ${CHEZMARK_HOME:=$(dirname $(dirname ${BASH_SOURCE[0]}))}
export CHEZMARK_HOME

source $CHEZMARK_HOME/bash/chezmark-init.inc

_chezmark_include .config/local/bashrc-$CHEZMARK_PROFILE.inc
_chezmark_include $CHEZMARK_HOME/bash/local/bashrc-$CHEZMARK_PROFILE.inc

if ${CHEZMARK_INCLUDE_ALL:true}; then
  for f in $CHEZMARK_HOME/bash/bashrc.d/*; do
    _chezmark_include $f
  done
fi
