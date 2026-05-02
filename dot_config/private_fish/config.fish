if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr cm chezmoi
    abbr cg chezmoi git
    abbr cgs chezmoi git status
    abbr cgc chezmoi git commit
    abbr m less
    abbr --position anywhere mm "| less"
    zoxide init fish | source
end
