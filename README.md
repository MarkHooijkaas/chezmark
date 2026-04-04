# chezmark: dotfiles for mark managed by chezmoi

Goal is to provide configuration and scripts that can be managed by chezmoi,
but for lesser priviliged machines (without chezmoi, brew, ...) can stil be useful


# Where to install binaries?
- `~/bin` can be managed by chezmoi (but not all need to be added to chezmoi)
- `~/.local/bin` can be used by package managers and stuff
- `~/opt/bin` might be used as an alternative


# Flatpak uses different config location
flatpak does not use `~/.config` location, because each application has it's own XDG "container"
To use the same chezmoi files on machines that use either flatpak or not,
the easiest way seems to use symbolic links from `~/.config/...` to `.var/app/...`.
```
$ ls -l ~/.config/ | grep var/app
lrwxrwxrwx. 1 mark mark  53 Apr  4 11:45 keepassxc -> ../.var/app/org.keepassxc.KeePassXC/config/keepassxc/
lrwxrwxrwx. 1 mark mark  35 Apr  4 11:09 zed -> ../.var/app/dev.zed.Zed/config/zed/
```
Another way might be to use templates, but this would make it more complicated.
See https://www.chezmoi.io/user-guide/manage-machine-to-machine-differences/#handle-different-file-locations-on-different-systems-with-the-same-contents


# Use multiple chezmoi repo's, e.g. public, private, specific company/network
Could be done with the `--source` option.
```
alias chp='chezmoi --source ~/work/mark/chezmark-priv'
alias chpcd='cd ~/work/mark/chezmark-priv'
```
