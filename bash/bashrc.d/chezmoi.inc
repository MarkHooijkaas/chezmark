if  command -v chezmoi >/dev/null 2>&1; then
    _chezmark_alias ch chezmoi
    _chezmark_alias ce 'chezmoi edit --apply'
    _chezmark_alias ca 'chezmoi apply'
fi
