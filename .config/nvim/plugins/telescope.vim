lua require("elusive")

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
nnoremap <leader>vrc :lua require('elusive.telescope').search_dotfiles({ hidden = true })<CR>
nnoremap <leader>bg :lua require('elusive.telescope').bg_selector()<CR>
nnoremap <leader>vc :lua require('elusive.telescope').chat_selector()<CR>
nnoremap <leader>gc :lua require('elusive.telescope').git_branches()<CR>
nnoremap <leader>td :lua require('elusive.telescope').dev()<CR>
