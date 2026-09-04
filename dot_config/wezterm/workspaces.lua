local wezterm = require "wezterm"

local home = wezterm.home_dir
return {
  { label = 'home',          id = home },
  { label = 'work',          id = home .. '/work' },
  { label = 'karmah',        id = home .. '/work/kisst/karmah' },
  { label = 'gitops-apps',   id = home .. '/work/rug/gitops-apps' },
  { label = 'gitops-infra',  id = home .. '/work/rug/gitops-infra' },
  { label = 'gitops-edu',    id = home .. '/work/rug/gitops-edusupport' },
  { label = 'gitops-common', id = home .. '/work/rug/gitops-common' },
  { label = 'rug-apps',      id = home .. '/work/rug/apps' },
  { label = 'chezmoi',       id = home .. '/work/mark/chezmark' },
  { label = 'notes',         id = home .. '/work/mark/notes' },
  { label = 'config',        id = home .. '/.config' },
}
