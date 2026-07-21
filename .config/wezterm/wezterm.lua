local wezterm = require("wezterm")
local mux = wezterm.mux
local act = wezterm.action

require("tabline")



if wezterm.config_builder then
    config = wezterm.config_builder()
end


config.color_scheme = "Catppuccin Frappe" --"Railscasts (base16)", --"Chalk"
config.window_background_opacity = 0.94
config.initial_cols = 100
config.initial_rows = 36

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 12
config.default_cursor_style = "BlinkingBar"

config.enable_scroll_bar = true
config.enable_tab_bar = true 
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"


config.launch_menu = {
    {
        label = "Git Bash",
        args = {"C:\\Program Files\\Git\\bin\\bash.exe", "--login", "-i"},
    },
    {
    label = 'PowerShell 7',
    args = { 'pwsh.exe' },
  },
  {
    label = 'Windows PowerShell',
    args = { 'powershell.exe' },
  },
}
config.default_prog = {"C:\\Program Files\\Git\\bin\\bash.exe", "--login", "-i"}


--
-- KEY BINDINGS
--
config.leader = { key = "a", mods = "CTRL" }
config.disable_default_key_bindings = true 

config.keys = {
    
    { key = "a", mods = "LEADER|CTRL", action = act({ SendString = "\x00" }) },

    { key = "-", mods = "LEADER", action = act({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
    { key = "/", mods = "LEADER", action = act({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },

    { key = "h", mods = "LEADER", action = act({ ActivatePaneDirection = "Left" }) },
    { key = "n", mods = "LEADER", action = act({ ActivatePaneDirection = "Down" }) },
    { key = "e", mods = "LEADER", action = act({ ActivatePaneDirection = "Up" }) },
    { key = "i", mods = "LEADER", action = act({ ActivatePaneDirection = "Right" }) },

    { key = "H", mods = "LEADER|SHIFT", action = act({ AdjustPaneSize = {"Left", 4 } }) },
    { key = "N", mods = "LEADER|SHIFT", action = act({ AdjustPaneSize = {"Down", 4 } }) },
    { key = "E", mods = "LEADER|SHIFT", action = act({ AdjustPaneSize = {"Up", 4 } }) },
    { key = "I", mods = "LEADER|SHIFT", action = act({ AdjustPaneSize = {"Right", 4 } }) },

    { key = "Tab", mods = "CTRL", action = act({ ActivateTabRelative = 1 }) },
    { key = "Tab", mods = "CTRL|SHIFT", action = act({ ActivateTabRelative = -1 }) },

    { key = "0", mods = "LEADER", action = act({ ActivateTab = 0 }) },
    { key = "1", mods = "LEADER", action = act({ ActivateTab = 1 }) },
    { key = "2", mods = "LEADER", action = act({ ActivateTab = 2 }) },
    { key = "3", mods = "LEADER", action = act({ ActivateTab = 3 }) },
    { key = "4", mods = "LEADER", action = act({ ActivateTab = 4 }) },
    { key = "5", mods = "LEADER", action = act({ ActivateTab = 5 }) },
    { key = "6", mods = "LEADER", action = act({ ActivateTab = 6 }) },
    { key = "7", mods = "LEADER", action = act({ ActivateTab = 7 }) },
    { key = "8", mods = "LEADER", action = act({ ActivateTab = 8 }) },
    { key = "9", mods = "LEADER", action = act({ ActivateTab = 9 }) },

    { key = "q", mods = "LEADER", action = act({ CloseCurrentPane = { confirm = true } }) },
    { key = "c", mods = "LEADER", action = act({ SpawnTab = "CurrentPaneDomain" }) },
    { key = "z", mods = "LEADER", action = "TogglePaneZoomState" },

    -- rename tab
    { 
        key = "r", 
        mods = "LEADER", 
        action = act({ 
            PromptInputLine = {
                description = "Enter a new name for tab",
                action = wezterm.action_callback(function(window, pane, line)
                    if line then
                        window:active_tab().set_title(line)
                    end
                end),
            },
        }),
    },

    -- rename session
    {
        key = "r",
        mods = "LEADER|SHIFT",
        action = act({
            PromptInputLine = {
                description = "Enter a new name for session",
                action = wezterm.action_callback(function(window, pane, line)
                    if line then
                        mux.rename_workspace(window:mux_window():get_workspace(), line)
                    end
                end),
            },
        })
    },

    -- picker for sessions
    {
        key = "s",
        mods = "LEADER",
        action = act({ ShowLauncherArgs = { flags = "WORKSPACES" }})
    },
    
    -- picker for tabs
    {
        key = "t",
        mods = "LEADER",
        action = act({ ShowLauncherArgs = { flags = "TABS" }})
    },

    -- add back copy/paste keybindings
    { key = "c", mods = "CTRL|SHIFT", action = act({ CopyTo = "Clipboard" }) },
    { key = "v", mods = "CTRL|SHIFT", action = act({ PasteFrom = "Clipboard" }) },
}



return config