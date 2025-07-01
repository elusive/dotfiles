return {

	{ "nvim-lua/popup.nvim" }, -- An implementation of the Popup API from vim in Neovim
	{ "nvim-lua/plenary.nvim" }, -- Useful lua functions used ny lots of plugins
	{ "rcarriga/nvim-notify" },
	{ "moll/vim-bbye" },
	{ "nvim-tree/nvim-web-devicons", opts = {} },

	-- messages, cmdline and the popupmenu
	{
		"folke/noice.nvim",
		opts = function(_, opts)
			opts.debug = vim.uv.cwd():find("noice%.nvim")
			opts.debug = false
			opts.routes = opts.routes or {}
			table.insert(opts.routes, {
				filter = {
					event = "notify",
					find = "No information available",
				},
				opts = { skip = true },
			})
			local focused = true
			vim.api.nvim_create_autocmd("FocusGained", {
				callback = function()
					focused = true
				end,
			})
			vim.api.nvim_create_autocmd("FocusLost", {
				callback = function()
					focused = false
				end,
			})

			table.insert(opts.routes, 1, {
				filter = {
					["not"] = {
						event = "lsp",
						kind = "progress",
					},
					cond = function()
						return not focused and false
					end,
				},
				view = "notify_send",
				opts = { stop = false, replace = true },
			})

			vim.api.nvim_create_autocmd("FileType", {
				pattern = "markdown",
				callback = function(event)
					vim.schedule(function()
						require("noice.text.markdown").keys(event.buf)
					end)
				end,
			})
			return opts
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		event = "VeryLazy",
		config = function()
			-- Custom Lualine component to show attached language server
			local clients_lsp = function()
				local bufnr = vim.api.nvim_get_current_buf()

				local clients = vim.lsp.get_clients()
				if next(clients) == nil then
					return ""
				end

				local c = {}
				for _, client in pairs(clients) do
					table.insert(c, client.name)
				end
				return " " .. table.concat(c, "|")
			end

			local custom_catppuccin = require("lualine.themes.catppuccin")

			-- Custom colours
			custom_catppuccin.normal.b.fg = "#cad3f5"
			custom_catppuccin.insert.b.fg = "#cad3f5"
			custom_catppuccin.visual.b.fg = "#cad3f5"
			custom_catppuccin.replace.b.fg = "#cad3f5"
			custom_catppuccin.command.b.fg = "#cad3f5"
			custom_catppuccin.inactive.b.fg = "#cad3f5"

			custom_catppuccin.normal.c.fg = "#6e738d"
			custom_catppuccin.normal.c.bg = "#1e2030"

			require("lualine").setup({
				options = {
					theme = custom_catppuccin,
					component_separators = "",
					section_separators = { left = "", right = "" },
					disabled_filetypes = { "alpha", "Outline" },
				},
				sections = {
					lualine_a = {
						{ "mode", separator = { left = " ", right = "" }, icon = "" },
					},
					lualine_b = {
						{
							"filetype",
							icon_only = true,
							padding = { left = 1, right = 0 },
						},
						"filename",
					},
					lualine_c = {
						{
							"branch",
							icon = "",
						},
						{
							"diff",
							symbols = { added = " ", modified = " ", removed = " " },
							colored = false,
						},
					},
					lualine_x = {
						{
							"diagnostics",
							symbols = { error = " ", warn = " ", info = " ", hint = " " },
							update_in_insert = true,
						},
					},
					lualine_y = { clients_lsp },
					lualine_z = {
						{ "location", separator = { left = "", right = " " }, icon = "" },
					},
				},
				inactive_sections = {
					lualine_a = { "filename" },
					lualine_b = {},
					lualine_c = {},
					lualine_x = {},
					lualine_y = {},
					lualine_z = { "location" },
				},
				tabline = {
					lualine_a = {
						{ "filetype", icon_only = true },
					},
					lualine_b = {
						{ "tabs", mode = 2, max_length = vim.o.columns },
						{
							function()
								vim.o.showtabline = 1
								return ""
								--HACK: lualine will set &showtabline to 2 if you have configured
								--lualine for displaying tabline. We want to restore the default
								--behavior here.
							end,
						},
					},
				},
				extensions = { "toggleterm", "trouble" },
			})
		end,
	},
}
