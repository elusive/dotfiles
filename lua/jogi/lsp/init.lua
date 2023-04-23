local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

local status_ok, _ = pcall(require, "jogi.lsp.lsp-installer")
if not status_ok then 
    return 
end

local status_ok, handlers = pcall(require, "jogi.lsp.handlers")
if not status_ok then
    return
end

handlers.setup()
--require("user.lsp.handlers").setup()
