function _chez_alias() {
    local alias=$1
    shift
    local command=$1
    if type distrobox >/dev/null 2>/dev/null; then
        _chez_debug defining alias $alias=\""${@}"\"
        alias $alias="${@}"
        complete -F _complete_alias $alias
    else
        _chez_debug skipping alias $alias="$command ${@}"
    fi
}
