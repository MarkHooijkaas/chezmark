function j
     cd (grep ^k ~/.config/jump/dirs | string replace -r '[a-zA-Z0-9]* *' "")
end
