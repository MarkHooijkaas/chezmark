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
    abbr cmup chezmoi update
    abbr cmun chezmoi iunmanaged
    abbr --set-cursor='%' cme chezmoi edit --apply ~/.config/%

    # https://www.reddit.com/r/fishshell/comments/1he9bd8/what_are_you_abbreviations/
    abbr --set-cursor='%' -- gcm 'git commit -m "%" -a'
    abbr --position anywhere --add p0 "&> /dev/null" # Pipe everything to /dev/null
    abbr --position anywhere --add pm "| less"
    abbr --position anywhere --add py " -o yaml | less"

    abbr m less
    abbr --position anywhere mm "| less"
    zoxide init fish | source
    bind ctrl-z 'fg 2>/dev/null; commandline -f repaint' # https://github.com/helix-editor/helix/wiki/Recipes#fish
    abbr kl kubectl --context ifed-lab
    abbr kd kubectl --context ifed-dev
    abbr kp kubectl --context ifed
    abbr ke kubectl --context ifed-exam
    abbr ked kubectl --context edusupport

    abbr gclrug --set-cursor='%' git clone git@github.com:rijksuniversiteit-groningen/%.git
    abbr gclm --set-cursor='%' git clone git@github.com:MarkHooijkaas/%.git
    abbr gclk --set-cursor='%' git clone git@github.com:kisst-org/%.git
    abbr gg lazygit
    abbr fcr source ~/.config/fish/config.fish # fish/config reload

    set -gx EDITOR hx
end
