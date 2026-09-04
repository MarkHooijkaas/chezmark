local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action
local config = wezterm.config_builder()
local home = wezterm.home_dir

-- see https://wezterm.org/multiplexing.html#unix-domains
config.unix_domains = {{ name = 'unix' }}
config.default_gui_startup_args = { 'connect', 'unix' }
-- needed to maximize
wezterm.on('gui-attached', function(domain)
  local workspace = mux.get_active_workspace()
  for _, window in ipairs(mux.all_windows()) do
    if window:get_workspace() == workspace then
      window:gui_window():maximize()
    end
  end
end)


config.automatically_reload_config = false

-- see: https://fredrikaverpil.github.io/blog/2024/10/20/session-management-in-wezterm-without-tmux/
wezterm.on("update-right-status", function(window, pane)
  window:set_right_status(window:active_workspace())
end)
local workspace_switcher = wezterm.plugin.require("https://github.com/MLFlexer/smart_workspace_switcher.wezterm")

-- keymaps
local keys={}
-- table.insert(keys, { key = "w", mods = "CTRL|SHIFT", action = act.CloseCurrentPane() })
-- table.insert(keys, { key = "s", mods = "CTRL|SHIFT", action = workspace_switcher.switch_workspace() })
table.insert(keys, { key = "y", mods = "CTRL|SHIFT", action = act.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }) })
-- table.insert(keys, { key = "[", mods = "CTRL|SHIFT", action = act.SwitchWorkspaceRelative(1) })
-- table.insert(keys, { key = "]", mods = "CTRL|SHIFT", action = act.SwitchWorkspaceRelative(-1) })
-- table.insert(keys, { key = "k", mods = "CTRL|SHIFT", action = act.SwitchToWorkspace({ name='karmah', spawn={cwd=home .. '/work/kisst/karmah'},args='top'}) })
table.insert(keys, { key = 'n', mods = 'CTRL', action = act.SwitchWorkspaceRelative(1) })
table.insert(keys, { key = 'p', mods = 'CTRL', action = act.SwitchWorkspaceRelative(-1) })

config.font_size = 20.0
config.enable_scroll_bar = true
-- config.color_scheme = 'Catppuccin Macchiato'
config.color_scheme = 'CGA'

config.window_frame = {
  font_size = 18.0,
}

-- Use Fish as the default shell in login mode
if string.find(wezterm.target_triple, 'darwin') then
  -- config.font_size = 14.0
  -- config.window_background_opacity = 0.85
  config.default_prog = { '/opt/homebrew/bin/fish', '-l' }
  workspace_switcher.zoxide_path = "/opt/homebrew/bin/zoxide"

-- Check for Linux
elseif string.find(wezterm.target_triple, 'linux') then
  -- config.font_size = 11.0
  -- config.window_background_opacity = 1.0
  config.default_prog = { '/home/linuxbrew/.linuxbrew/bin/fish', '-l' }
  workspace_switcher.zoxide_path = "/home/linuxbrew/.linuxbrew/bin/zoxide"
end

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

local ws_selector = require 'ws-selector'
table.insert(keys, ws_selector.keydef() )
ws_selector:shortcuts(keys)

config.keys = keys
return config
