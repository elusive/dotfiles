return {
    { "windwp/nvim-autopairs" },
    { "junegunn/fzf.vim" },
    { "ray-x/lsp_signature.nvim" },
    { "lvimuser/lsp-inlayhints.nvim" },
    { "L3MON4D3/LuaSnip" },             --snippet engine
    { "rafamadriz/friendly-snippets" }, -- a bunch of snippets to use
    { "RRethy/vim-illuminate" },        -- Illuminate (hilites matches to cursor word){
    { 
        "iamcco/markdown-preview.nvim",
        config = function()
                vim.fn["mkdp#util#install"]()
            end,
        ft = "markdown",
        cmd = "MarkdownPreview",
    },
    { "nvim-treesitter/playground",  cmd = "TSPlaygroundToggle" },
    {
        "mfussenegger/nvim-lint",
        event = { "BufWritePost", "BufReadPost", "InsertLeave" },
        opts = {
            linters_by_ft = {
                dockerfile = { "hadolint" },
                go = { "golangcilint" },
                lua = { "selene" },
                markdown = { "markdownlint-cli2" },
                yaml = { "yamllint" },
            },
        },
        config = function(_, opts)
            local lint = require("lint")
            lint.linters_by_ft = opts.linters_by_ft
            local lint_augroup = vim.api.nvim_create_augroup("linting", { clear = true })
            vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
                group = lint_augroup,
                callback = function()
                    lint.try_lint()
                end,
            })
        end,
    },
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
