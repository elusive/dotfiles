
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<F5>", ":lua require'dap'.continue()<CR>", opts)
keymap("n", "<F10>", ":lua require'dap'.step_over()<CR>", opts)
keymap("n", "<F11>", ":lua require'dap'.step_into()<CR>", opts)
keymap("n", "<F12>", ":lua require'dap'.step_out()<CR>", opts)
keymap("n", "<F9>", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
keymap("n", "<leader>db", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
keymap("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>", opts)
keymap("n", "<leader>dt", ":lua require'dap-go'.debug_test()<CR>", opts)



-- language debuggers
require('user.dap.go').setup()
require('user.dap.python').setup()
require('user.dap.lua').setup()
--require('user.dap.rust').setup()
require('user.dap.typescript').setup()


-- dap ui 
require("nvim-dap-virtual-text").setup()
--require("dapui").setup()
--local dap, dapui = require("dap"), require("dapui")
--dap.listeners.after.event_initialized["dapui_config"] = function()
--  dapui.open()
--end
--dap.listeners.before.event_terminated["dapui_config"] = function()
--  dapui.close()
--end
--dap.listeners.before.event_exited["dapui_config"] = function()
--  dapui.close()
--end
