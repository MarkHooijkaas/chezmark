installeer localsend om keepass db en keyfile over te zetten
installeer keepassxc
    browser integration on
    UI fontsize BIG
    do not lock database after x minutes or after laptop lock
    minimize instead of exit
hostname aanpassen
ssh-keygen
inloggen op github en ssh key toevoegen
ujust devmode
brew install chezmoi
    mkdir -p ~/work/mark/
    git clone git@github.com:MarkHooijkaas/chezmark.git
    ln -s ~/work/mark/chezmark/ ~/.local/share/chezmoi
of
    chezmoi init git@github.com:MarkHooijkaas/chezmark.git --source ~/work/mark/chezmark
    # it seems not to work completely, since `cm cd` still goes to .local/share/chezmoi??? which is empty
    rmdir .local/share/chezmoi
    ln -s  ~/work/mark/chezmark .local/share/chezmoi

# fish installeren
https://vinh.dev/writing/set-up-fish-shell-macos
of sudo sh -c 'echo "$(command -v fish)" >> /etc/shells'
of command -v fish | sudo tee -a /etc/shells
chsh -s "$(command -v fish)"
set -U fish_user_paths $(brew --prefix)/bin $fish_user_paths


firefox default zoom 150%

TODO:
- how to handle flatpak config (e.g. zed), if it is sometimes in flatpak .var or normal .config
- can keepassxc.ini,  safely be stored in public git
- can authorized keys be stored in public
- make .ssh/config safe and specific for many machines/environments?
- use multiple chezmoi repo's (e.g. public, private, specific company/network, ...)
- syncthing, start in background, GUI app?
