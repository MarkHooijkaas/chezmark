function eternal-history --on-event fish_preexec
    history --max 1 --show-time="%y/%m/%d %H:%M:%S%t" >>~/.local/state/chez/bash_eternal_history
end
