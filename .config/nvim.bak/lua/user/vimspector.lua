local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap


keymap("n", "<leader>vl", ":call vimspector#Launch()<cr>", opts)
keymap("n", "<leader>vr", ":VimspectorReset<cr>", opts)
keymap("n", "<leader>ve", ":VimspectorEval<cr>", opts)
keymap("n", "<leader>vw", ":VimspectorWatch<cr>", opts)
keymap("n", "<leader>vo", ":VimspectorShowOutput<cr>", opts)
keymap("n", "<leader>vi", ":VimspectorBalloonEval<cr>", opts)
keymap("x", "<leader>vi", ":VimspectorBalloonEval<cr>", opts)


vim.g.vimspector_enable_mappings = "HUMAN"
vim.g.vimspector_install_gadgets = { 'debugpy', 'vscode-node-debug' }


