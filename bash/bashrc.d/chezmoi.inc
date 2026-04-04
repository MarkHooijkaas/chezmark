if  command -v chezmoi >/dev/null 2>&1; then
    _chez_alias ch chezmoi
    _chez_alias che 'chezmoi edit --apply --verbose'
    _chez_alias cha 'chezmoi apply --verbose'
    _chez_alias chd 'chezmoi diff'
    alias chcd='cd ~/work/mark/chezmark'
    alias chgd='chezmoi git diff'
    _chez_alias chp 'chezmoi --source ~/work/mark/chezmark-priv'
    alias chpcd='cd ~/work/mark/chezmark-priv'
fi
