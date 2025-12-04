if  command -v chezmoi >/dev/null 2>&1; then
    _chez_alias ch chezmoi
    _chez_alias che 'chezmoi edit --apply --verbose'
    _chez_alias cha 'chezmoi apply --verbose'
    _chez_alias chd 'chezmoi diff'
fi
