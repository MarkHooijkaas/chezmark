function kp --wraps='kubectl --context ifed' --description 'alias kp=kubectl --context ifed'
    kubectl --context ifed $argv
end
