function chezmark_alias() {
    local alias=$1
    shift
    local command=$1
    if type distrobox >/dev/null 2>/dev/null; then
        chezmark_debug defining alias $alias=\""${@}"\"
        alias $alias="${@}"
        complete -F _complete_alias $alias
    else
        chezmark_debug skipping alias $alias="$command ${@}"
    fi
}
