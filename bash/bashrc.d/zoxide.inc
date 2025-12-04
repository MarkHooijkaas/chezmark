if  command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init --cmd cd bash)"
fi

# See https://github.com/ajeetdsouza/zoxide/issues/1000#issuecomment-2820718609
# use c with tab completion only works with zsh
#c() {
#  if [ $# -eq 0 ]; then
#    zoxide query --list --score
#  else
#    z "$@"
#  fi
#}
#_c() {
#  local expl
#  local -a dirs
#  dirs=("${(@f)$(zoxide query --list)}")
#  _describe 'zoxide dir' dirs
#}
#compdef _c c
