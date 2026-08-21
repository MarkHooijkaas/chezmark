function h --wraps='grep' --description 'alias h grep ~/.local/state/chez/bash_eternal_history'
    grep $argv <~/.local/state/chez/bash_eternal_history
end
