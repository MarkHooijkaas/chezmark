function cmgs --wraps='chezmoi git status' --description 'alias cmgs=chezmoi git status'
    chezmoi git status $argv
end
