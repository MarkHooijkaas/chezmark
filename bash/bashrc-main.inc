
: ${CHEZMARK_HOME:=$(dirname $(dirname ${BASH_SOURCE[0]}))}
#CHEZMARK_HOME=$(cd $(dirname ${BASH_SOURCE[0]}); cd ..; pwd)

export CHEZMARK_HOME

source $CHEZMARK_HOME/bash/bashrc-init.inc

if [ -f .config/local/bashrc-main-$CHEZMARK_PROFILE.inc ]; then
  source .config/local/bashrc-main-$CHEZMARK_PROFILE.inc
elif [ -f $CHEZMARK_HOME/local/bashrc-main-$CHEZMARK_PROFILE.inc ]; then
  source $CHEZMARK_HOME/local/bashrc-main-$CHEZMARK_PROFILE.inc
else
  for f in $CHEZMARK_HOME/bash/bashrc.d/*; do
    chezmark_include $f
  done
fi
