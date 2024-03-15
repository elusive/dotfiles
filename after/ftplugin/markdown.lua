vim.opt_local.spell=true
vim.opt_local.wrap=true
vim.opt_local.textwidth=80
vim.opt_local.colorcolumn="+1"
vim.opt_local.linebreak=true

-- auto save for notes/readmes

vim.api.nvim_create_autocmd('FocusLost', {
	desc = 'Auto save markdown files when focus is lost.',
	group = vim.api.nvim_create_augroup('save_on_blur   ', { clear = true }),
	callback = function (opts)
		if vim.bo[opts.buf].filetype == 'markdown' then
			vim.cmd ':wa'
		end
	end,
})
