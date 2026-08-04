if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr cm chezmoi
    abbr cmg chezmoi git
    abbr cmgs chezmoi git status
    abbr cmgc chezmoi git commit
    abbr cmgp chezmoi git push
    abbr cmcd chezmoi cd
    abbr cmr chezmoi re-add
    abbr cma chezmoi add
    abbr cmd chezmoi diff
    abbr cmap chezmoi apply
    abbr cmu chezmoi update
    # https://www.reddit.com/r/fishshell/comments/1he9bd8/what_are_you_abbreviations/
    abbr --set-cursor='%' -- gcm 'git commit -m "%"'
    abbr m less
    abbr --position anywhere mm "| less"
    zoxide init fish | source
    bind ctrl-z 'fg 2>/dev/null; commandline -f repaint' # https://github.com/helix-editor/helix/wiki/Recipes#fish
    abbr kl kubectl --context ifed-lab
    abbr kd kubectl --context ifed-dev
    abbr kp kubectl --context ifed
    abbr ke kubectl --context ifed-exam
    abbr ked kubectl --context edusupport
end
