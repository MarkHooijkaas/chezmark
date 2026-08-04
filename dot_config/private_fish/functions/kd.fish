function kd --wraps='kubectl --context ifed-dev' --description 'alias kd=kubectl --context ifed-dev'
    kubectl --context ifed-dev $argv
end
