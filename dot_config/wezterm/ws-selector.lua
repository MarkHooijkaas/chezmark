local wezterm = require 'wezterm'
local act = wezterm.action
local home = wezterm.home_dir
local workspaces = require 'workspaces'

wezterm.log_info "loading module ws-selector.lua"

local M={}

function M:shortcuts(keys)
  for _ , v in ipairs(workspaces) do
    if v.key then
      local mods=v.mods or 'CTRL|SHIFT'
      wezterm.log_info("binding key " .. mods .. " " .. v.key .. " to workspace " .. v.name)
      table.insert(keys, { key = v.key, mods = mods, action = act.SwitchToWorkspace({ name=v.name, spawn={ cwd=v.dir}}) })
    end
  end
end

function M:keydef()
  local choices = {}
  for _ , v in ipairs(workspaces) do
    table.insert(choices, {id = v.dir, label=v.name} )
  end
  return {
    key = 'g',
    mods = 'CTRL|SHIFT',
    action = wezterm.action_callback(function(window, pane)
      -- Here you can dynamically construct a longer list if needed

      local home = wezterm.home_dir
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
