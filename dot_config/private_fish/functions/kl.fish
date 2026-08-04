function kl --wraps='kubectl --context ifed-lab' --description 'alias kl=kubectl --context ifed-lab'
    kubectl --context ifed-lab $argv
end
