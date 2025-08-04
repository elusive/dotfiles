local wezterm = require("wezterm")
local mux = wezterm.mux
local act = wezterm.action

require("tabline")

local config = {}

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

--
-- CONFIG CHOICES Begin here
--

config.color_scheme = "Catppuccin Frappe" --"Railscasts (base16)", --"Chalk"

--window opacity reduced
config.window_background_opacity = 0.92
config.macos_window_background_blur = 30

-- changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 56

-- make sure you use a font you have installed
config.font = wezterm.font("NotoSansM Nerd Font")
config.font_size = 17

-- scroll bar
config.enable_scroll_bar = true
config.enable_tab_bar = true

config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"
config.default_cursor_style = "BlinkingBar"

-- Custom Key Bindings
-- disable_default_key_bindings = true,
-- default_cwd = "C:\\Users\\jgilliland",
config.unix_domains = { { name = "unix" } }
config.leader = { key = "a", mods = "CTRL" }
config.disable_default_key_bindings = true
config.keys = {
	-- Send "CTRL-A" to the terminal when pressing CTRL-A, CTRL-A
	{ key = "h", mods = "LEADER|CTRL", action = act({ SendString = "\x00" }) },
	{ key = "-", mods = "LEADER", action = act({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
	{
		key = "/",
		mods = "LEADER",
		action = act({ SplitHorizontal = { domain = "CurrentPaneDomain" } }),
	},
	{ key = "z", mods = "LEADER", action = "TogglePaneZoomState" },
	{ key = "c", mods = "LEADER", action = act({ SpawnTab = "CurrentPaneDomain" }) },
	{ key = "h", mods = "LEADER", action = act({ ActivatePaneDirection = "Left" }) },
	{ key = "j", mods = "LEADER", action = act({ ActivatePaneDirection = "Down" }) },
	{ key = "k", mods = "LEADER", action = act({ ActivatePaneDirection = "Up" }) },
	{ key = "l", mods = "LEADER", action = act({ ActivatePaneDirection = "Right" }) },
	{ key = "H", mods = "LEADER|SHIFT", action = act({ AdjustPaneSize = { "Left", 4 } }) },
	{ key = "J", mods = "LEADER|SHIFT", action = act({ AdjustPaneSize = { "Down", 4 } }) },
	{ key = "K", mods = "LEADER|SHIFT", action = act({ AdjustPaneSize = { "Up", 4 } }) },
	{ key = "L", mods = "LEADER|SHIFT", action = act({ AdjustPaneSize = { "Right", 4 } }) },
	{ key = "0", mods = "LEADER", action = act({ ActivateTab = 0 }) },
	{ key = "1", mods = "LEADER", action = act({ ActivateTab = 1 }) },
	{ key = "2", mods = "LEADER", action = act({ ActivateTab = 2 }) },
	{ key = "3", mods = "LEADER", action = act({ ActivateTab = 3 }) },
	{ key = "4", mods = "LEADER", action = act({ ActivateTab = 4 }) },
	{ key = "5", mods = "LEADER", action = act({ ActivateTab = 5 }) },
	{ key = "6", mods = "LEADER", action = act({ ActivateTab = 6 }) },
	{ key = "7", mods = "LEADER", action = act({ ActivateTab = 7 }) },
	{ key = "8", mods = "LEADER", action = act({ ActivateTab = 8 }) },
	{ key = "&", mods = "LEADER|SHIFT", action = act({ CloseCurrentTab = { confirm = true } }) },
	{ key = "q", mods = "LEADER", action = act({ CloseCurrentPane = { confirm = true } }) },
	{ key = "n", mods = "LEADER", action = act({ ActivateTabRelative = 1 }) },
	{ key = "p", mods = "LEADER", action = act({ ActivateTabRelative = -1 }) },
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
	{ key = "s", mods = "LEADER", action = act({ ShowLauncherArgs = { flags = "WORKSPACES" } }) },
	{
		key = "r",
		mods = "LEADER|SHIFT",
		action = act({
			PromptInputLine = {
				description = "Enter new name for session",
				action = wezterm.action_callback(function(window, pane, line)
					if line then
						mux.rename_workspace(window:mux_window():get_workspace(), line)
					end
				end),
			},
		}),
	},
	{ key = "n", mods = "SHIFT|CTRL", action = "ToggleFullScreen" },
	{ key = "v", mods = "SHIFT|CTRL", action = act({ PasteFrom = "Clipboard" }) },
	{ key = "c", mods = "SHIFT|CTRL", action = act({ CopyTo = "Clipboard" }) },

	-- open config in hx in new tab
	{
		key = ",",
		mods = "CMD",
		action = act.SpawnCommandInNewTab({
			cwd = os.getenv("WEZTERM_CONFIG_DIR"),
			set_environment_variables = {
				TERM = "screen-256color",
			},
			args = {
				"hx",
				os.getenv("WEZTERM_CONFIG_FILE"),
			},
		}),
	},
}

config.set_environment_variables = {
	PATH = "/Users/john.gilliland/.local/bin:" .. "/opt/homebrew/bin:" .. os.getenv("PATH"),
}

wezterm.on("reload-helix", function(window, pane)
	local top_process = basename(pane:get_foreground_process_name())
	if top_process == "hx" then
		local bottom_pane = pane:tab():get_pane_direction("Down")
		if bottom_pane ~= nil then
			local bottom_process = basename(bottom_pane:get_foreground_process_name())
			if bottom_process == "lazygit" then
				local action = wezterm.action.SendString(":reload-all\r\n")
				window:perform_action(action, pane)
			end
		end
	end
end)

function extract_filename(uri)
	local start, match_end = uri:find("$EDITOR:")
	if start == 1 then
		return uri:sub(match_end + 1)
	end

	return nil
end

function editable(filename)
	local extension = filename:match("%.([^.:/\\]+):%d+:%d+$")
	if extension then
		wezterm.log_info(string.format("extension is [%s]", extension))
		local text_extensions = {
			md = true,
			c = true,
			go = true,
			scm = true,
			rkt = true,
			rs = true,
		}
		if text_extensions[extension] then
			return true
		end
	end

	return false
end

function extension(filename)
	return filename:match("%.([^.:/\\]+):%d+:%d+$")
end

function basename(s)
	return string.gsub(s, "(.*[/\\])(.*)", "%2")
end

function open_with_hx(window, pane, url)
	local name = extract_filename(url)
	wezterm.log_info("name: " .. url)
	if name and editable(name) then
		if extension(name) == "rs" then
			local pwd = string.gsub(pane:get_current_working_dir(), "file://.-(/.+)", "%1")
			name = pwd .. "/" .. name
		end

		local direction = "Up"
		local hx_pane = pane:tab():get_pane_direction(direction)
		if hx_pane == nil then
			local action = wezterm.action({
				SplitPane = {
					direction = direction,
					command = { args = { "hx", name } },
				},
			})
			window:perform_action(action, pane)
			pane:tab():get_pane_direction(direction).activate()
		elseif basename(hx_pane:get_foreground_process_name()) == "hx" then
			local action = wezterm.action.SendString(":open " .. name .. "\r\n")
			window:perform_action(action, hx_pane)
			hx_pane:activate()
		else
			local action = wezterm.action.SendString("hx " .. name .. "\r\n")
			window:perform_action(action, hx_pane)
			hx_pane:activate()
		end
		-- prevent the default action from opening in a browser
		return false
	end
	-- otherwise, by not specifying a return value, we allow later
	-- handlers and ultimately the default action to caused the
	-- URI to be opened in the browser
end

wezterm.on("open-uri", function(window, pane, uri)
	return open_with_hx(window, pane, uri)
end)

config.hyperlink_rules = wezterm.default_hyperlink_rules()

table.insert(config.hyperlink_rules, {
	regex = "^/[^/\r\n]+(?:/[^/\r\n]+)*:\\d+:\\d+",
	format = "$EDITOR:$0",
})

table.insert(config.hyperlink_rules, {
	regex = "[^\\s]+\\.rs:\\d+:\\d+",
	format = "$EDITOR:$0",
})

-- and finally return the config
return config
