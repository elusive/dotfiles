vim.o.background = "dark"
vim.cmd [[
try
  colorscheme gruvbox-baby
  colorscheme codeschool
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
