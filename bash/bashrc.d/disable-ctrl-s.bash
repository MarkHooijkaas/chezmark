if [[ -t 0 && $- = *i* ]]; then # only in interactive mode
    stty -ixon # disable ctrl-s ctrl-q XON XOFF flow
fi
