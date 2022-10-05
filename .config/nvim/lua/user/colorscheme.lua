--vim.o.background = "light"
vim.o.background = "dark"
--vim.g.gruvbox_baby_function_style = "NONE"
--vim.g.gruvbox_baby_keyword_style = "italic"


-- Enable telescope theme
vim.g.gruvbox_baby_telescope_theme = 1


-- Enable transparent mode
vim.g.gruvbox_baby_transparent_mode = 1

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
--vim.cmd[[colorscheme gruvbox-baby]]
-- vim.cmd [[
--try
--  colorscheme gruvbox-baby
--  colorscheme codeschool
--catch /^Vim\%((\a\+)\)\=:E185/
--  colorscheme default
--  set background=dark
--endtry
--]]
