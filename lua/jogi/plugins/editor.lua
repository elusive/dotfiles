return {
    { "windwp/nvim-autopairs" },
    { "junegunn/fzf.vim" },
    { "ray-x/lsp_signature.nvim" },
    { "lvimuser/lsp-inlayhints.nvim" },
    { "L3MON4D3/LuaSnip" },             --snippet engine
    { "rafamadriz/friendly-snippets" }, -- a bunch of snippets to use
    { "RRethy/vim-illuminate" },        -- Illuminate (hilites matches to cursor word)

    { "nvim-treesitter/playground",  cmd = "TSPlaygroundToggle" },
    {
        "folke/persistence.nvim",
        event = "BufReadPre",
        lazy = false,
        opts = {
            hooks = {
                select = function()
                    return require("telescope.builtin").find_files {
                        cwd = require("persistence").get_dir(),
                        prompt_title = "Sessions",
                    }
                end,
            },
        },
        keys = {
            {
                "<leader>ps",
                function()
                    require("persistence").load()
                end,
                desc = "Load session for current directory",
            },
            {
                "<leader>pS",
                function()
                    require("persistence").select()
                end,
                desc = "Select session to load",
            },
            {
                "<leader>pl",
                function()
                    require("persistence").load { last = true }
                end,
                desc = "Load last session",
            },
            {
                "<leader>pd",
                function()
                    require("persistence").stop()
                end,
                desc = "Stop persistence",
            },
        },
    }
}
