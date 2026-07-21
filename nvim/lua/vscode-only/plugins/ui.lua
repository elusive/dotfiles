return {

    -- My plugins here
    "nvim-lua/popup.nvim",       -- An implementation of the Popup API from vim in Neovim
    "nvim-lua/plenary.nvim",     -- Useful lua functions used ny lots of plugins
    "windwp/nvim-autopairs",     -- Autopairs, integrates with both cmp and treesitter
    "numToStr/Comment.nvim",     -- Easily comment stuff

    {"adisen99/codeschool.nvim", requires = {"rktjmp/lush.nvim"}},
    "rebelot/kanagawa.nvim",     -- wave

    -- Illuminate (hilites matches to cursor word)
    "RRethy/vim-illuminate",

    -- Surround
    { "tpope/vim-surround", event = "BufReadPre" },
    {
      "Matt-A-Bennett/vim-surround-funk",
      event = "BufReadPre",
      config = function()
        require("user.surroundfunk").setup()
      end,
      disable = true,
    }
}
