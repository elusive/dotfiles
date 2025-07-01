return {
    'ThePrimeagen/harpoon',
    branch = "harpoon2",
    requires = {{ "nvim-lua/plenary.nvim" }},  
    config = function()
        local harpoon = require("harpoon")

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>lm", function() harpoon.ui.toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<C-n>", function() harpoon:list().select(1) end)
        vim.keymap.set("n", "<C-e>", function() harpoon:list().select(2) end)
        vim.keymap.set("n", "<C-i>", function() harpoon:list().select(3) end)
        vim.keymap.set("n", "<C-o>", function() harpoon:list().select(4) end)

        vim.keymap.set("n", "<leader>nm", function() harpoon:list():next() end)
        vim.keymap.set("n", "<leader>pm", function() harpoon:list():prev() end)
    end
}
