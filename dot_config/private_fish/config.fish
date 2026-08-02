if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr cm chezmoi
    abbr cg chezmoi git
    abbr cgs chezmoi git status
    abbr cgc chezmoi git commit
    abbr j z
    abbr jj zi
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
