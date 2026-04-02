: ${CHEZ_VERBOSE:=true}
: ${CHEZ_DEBUG:=false}

chez-skip-include $CHEZ_HOME/bash/bashrc.d/homebrew.bash
chez-skip-include $CHEZ_HOME/bash/bashrc.d/ssh-agent.bash

# If you want to control, what is include or when you can do something like
# CHEZ_INCLUDE_ALL=false
# echo before include_all
# _chez_include_all
# echo after include_all
