function kedu --wraps='kubectl --context edusupport' --description 'alias kedu=kubectl --context edusupport'
    kubectl --context edusupport $argv
end
