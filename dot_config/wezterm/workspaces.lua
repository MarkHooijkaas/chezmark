local wezterm = require "wezterm"

local home = wezterm.home_dir
return {
  { name = 'home',          key='', dir = home },
  { name = 'work',          key='', dir = home..'/work' },
  { name = 'karmah',        key='', dir = home..'/work/kisst/karmah' },
  { name = 'gitops-apps',   key='', dir = home..'/work/rug/gitops-apps' },
  { name = 'gitops-infra',  key='', dir = home..'/work/rug/gitops-infra' },
  { name = 'gitops-edu',    key='', dir = home..'/work/rug/gitops-edusupport' },
  { name = 'gitops-common', key='', dir = home..'/work/rug/gitops-common' },
  { name = 'rug-apps',      key='', dir = home..'/work/rug/apps' },
  { name = 'chezmoi',       key='', dir = home..'/work/mark/chezmark' },
  { name = 'notes',         key='', dir = home..'/work/mark/notes' },
  { name = 'config',        key='', dir = home..'/.config' },
}
