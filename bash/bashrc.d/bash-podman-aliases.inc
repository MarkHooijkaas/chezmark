alias pima="podman images --sort repository| grep -v '<none>'"

alias prit='podman run -it --rm'
complete -F _complete_alias prit
