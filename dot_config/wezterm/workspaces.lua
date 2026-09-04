local wezterm = require "wezterm"

local home = wezterm.home_dir
return {
  { name = 'home',          key=nil, dir = home },
  { name = 'work',          key=nil, dir = home..'/work' },
  { name = 'karmah',        key='k', dir = home..'/work/kisst/karmah' },
  { name = 'gitops-apps',   key=nil, dir = home..'/work/rug/gitops-apps' },
  { name = 'gitops-infra',  key=nil, dir = home..'/work/rug/gitops-infra' },
  { name = 'gitops-edu',    key=nil, dir = home..'/work/rug/gitops-edusupport' },
  { name = 'gitops-common', key=nil, dir = home..'/work/rug/gitops-common' },
  { name = 'rug-apps',      key=nil, dir = home..'/work/rug/apps' },
  { name = 'chezmoi',       key='c', dir = home..'/work/mark/chezmark' },
  { name = 'notes',         key=nil, dir = home..'/work/mark/notes' },
  { name = 'config',        key=nil, dir = home..'/.config' },
}
