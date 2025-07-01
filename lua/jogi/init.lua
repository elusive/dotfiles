require("jogi.config.autocmds")
require("jogi.config.options")
require("jogi.config.keymaps")
require("jogi.config.lazy")
require("jogi.dap")

-- native lsp setup to enable the servers for which we have lua files
local lsp_configs = {}
local disabled = { "vtsls" }
local function contains(tbl, val)
	for _, value in ipairs(tbl) do
		if value == val then
			return true
		end
	end
	return false
end
for _, f in pairs(vim.api.nvim_get_runtime_file("lsp/*.lua", true)) do
	local server_name = vim.fn.fnamemodify(f, ":t:r")
	if contains(disabled, server_name) == false then
		table.insert(lsp_configs, server_name)
	end
end

vim.lsp.enable(lsp_configs)
