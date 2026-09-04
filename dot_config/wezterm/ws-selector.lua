local wezterm = require 'wezterm'
local act = wezterm.action
local home = wezterm.home_dir
local workspaces = require 'workspaces'

local M={}

local choices = {}
for _ , v in ipairs(workspaces) do
  table.insert(choices, {id = v.dir, label=v.name} )
end

function M:keydef()
  return {
    key = 'g',
    mods = 'CTRL|SHIFT',
    action = wezterm.action_callback(function(window, pane)
      -- Here you can dynamically construct a longer list if needed

      local home = wezterm.home_dir
      -- local workspaces = {
      --   { id = home, label = 'Home' },
      --   { id = home .. '/work', label = 'Work' },
      --   { id = home .. '/personal', label = 'Personal' },
      --   { id = home .. '/.config', label = 'Config' },
      -- }

      window:perform_action(
        act.InputSelector {
          action = wezterm.action_callback(
            function(inner_window, inner_pane, id, label)
              if not id and not label then
                wezterm.log_info 'cancelled'
              else
                wezterm.log_info('id = ' .. id)
                wezterm.log_info('label = ' .. label)
                inner_window:perform_action(
                  act.SwitchToWorkspace {
                    name = label,
                    spawn = {
                      label = 'Workspace: ' .. label,
                      cwd = id,
                    },
                  },
                  inner_pane
                )
              end
            end
          ),
          title = 'Choose Workspace',
          choices = choices,
          fuzzy = true,
          fuzzy_description = 'Fuzzy find and/or make a workspace: ',
        },
        pane
      )
    end),
  }
end

return M
