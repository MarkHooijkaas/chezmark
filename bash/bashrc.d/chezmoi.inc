if  command -v chezmoi >/dev/null 2>&1; then
    _chezmark_alias ch chezmoi
    _chezmark_alias che 'chezmoi edit --apply --verbose'
    _chezmark_alias cha 'chezmoi apply --verbose'
    _chezmark_alias chd 'chezmoi diff'
fi
