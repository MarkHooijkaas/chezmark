local wezterm = require 'wezterm'

local config = {}

-- Use Fish as the default shell in login mode
config.default_prog = { '/home/linuxbrew/.linuxbrew/bin/fish', '-l' }

return config
