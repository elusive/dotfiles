local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("user.lsp.lsp-installer")

local status_ok, handlers = pcall(require, "user.lsp.handlers")
if not status_ok then
  return
end

handlers.setup()
--require("user.lsp.handlers").setup()
