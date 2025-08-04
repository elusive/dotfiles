-- Install LSP servers and 3rd-party tools
-- https://github.com/williamboman/mason.nvim

local PACKAGES = {
	-- LSP
	"angular-language-server",
	"css-lsp",
	"cssmodules-language-server",
	"css-variables-language-server",
	"dockerfile-language-server",
	"emmet-language-server",
	"gopls",
	"html-lsp",
	"json-lsp",
	"lua-language-server",
	"pyright",
	"rust-analyzer",
	"typescript-language-server",
	"vtsls",
	"yaml-language-server",
	-- DAP
	"codelldb",
	"js-debug-adapter",
	-- Format
	"prettierd",
	"stylua",
	-- Lint
	"eslint-lsp",
	"pylint",
}

local function install(pack, version)
	local notifyOpts = { title = "Mason", icon = "", id = "mason.install" }

	local msg = version and ("[%s] updating to %s…"):format(pack.name, version)
		or ("[%s] installing…"):format(pack.name)
	vim.defer_fn(function()
		vim.notify(msg, nil, notifyOpts)
	end, 0)

	pack:once("install:success", function()
		local msg2 = ("[%s] %s"):format(pack.name, version and "updated." or "installed.")
		notifyOpts.icon = " "
		vim.defer_fn(function()
			vim.notify(msg2, nil, notifyOpts)
		end, 0)
	end)

	pack:once("install:failed", function()
		local error = "Failed to install [" .. pack.name .. "]"
		vim.defer_fn(function()
			vim.notify(error, vim.log.levels.ERROR, notifyOpts)
		end, 0)
	end)

	pack:install({ version = version })
end
return {
	"mason-org/mason.nvim",
	init = function()
		-- Make mason packages available before loading it; allows to lazy-load mason.
		vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH
		-- Do not crowd home directory with NPM cache folder
		vim.env.npm_config_cache = vim.env.HOME .. "/.cache/npm"
	end,
	opts = {
		ui = {
			border = "single",
			height = 0.85,
			width = 0.8,
		},
	},
	config = function(_, opts)
		require("mason").setup(opts)

		-- Filter out disabled packages
		local packages = {}
		for _, package in ipairs(PACKAGES) do
			table.insert(packages, package)
		end
	end,

	event = { "VeryLazy" },
	enabled = not vim.g.vscode,
}
