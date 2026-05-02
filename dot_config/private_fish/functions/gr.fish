function gr --wraps='grep -r --exclude-dir=.git/' --description 'alias gr=grep -r --exclude-dir=.git/'
    grep -r --exclude-dir=.git/ $argv
end
