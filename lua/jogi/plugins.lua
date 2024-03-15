local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}



-- Install your plugins here

return packer.startup(function(use)

    -- My plugins here
    use "wbthomason/packer.nvim"    -- Have packer manage itself
    use "nvim-lua/popup.nvim"       -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim"     -- Useful lua functions used ny lots of plugins
    use "windwp/nvim-autopairs"     -- Autopairs, integrates with both cmp and treesitter
    use "numToStr/Comment.nvim"     -- Easily comment stuff
    use "rcarriga/nvim-notify"
    use "folke/zen-mode.nvim"
    use "folke/twilight.nvim"

--    use {
--      'kyazdani42/nvim-tree.lua',
--      requires = {
--        'nvim-tree/nvim-web-devicons', -- optional, for file icons
--      }
--    }
    use {
       "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
        }
      }

    use {
        "folke/noice.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    }

--  obsidian integration
    use({
      "epwalsh/obsidian.nvim",
      tag = "*",  -- recommended, use latest release instead of latest commit
      requires = {
        "nvim-lua/plenary.nvim",
      },
    })

    use "akinsho/bufferline.nvim"
    use "moll/vim-bbye"
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }
    use "junegunn/fzf.vim"

    -- copilot
    use "github/copilot.vim"

    -- color schemes
    use "ellisonleao/gruvbox.nvim"
    use "Yazeed1s/minimal.nvim"
    use "daschw/leaf.nvim"
    use "rebelot/kanagawa.nvim"     -- wave
    use { "catppuccin/nvim", as = "catppuccin" }

    -- cmp plugins
    use "hrsh7th/nvim-cmp"          -- The completion plugin
    use "hrsh7th/cmp-buffer"        -- buffer completions
    use "hrsh7th/cmp-path"          -- path completions
    use "hrsh7th/cmp-cmdline"       -- cmdline completions
    use "saadparwaiz1/cmp_luasnip"  -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
    use "ray-x/lsp_signature.nvim"
    use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
    use "lvimuser/lsp-inlayhints.nvim"

    -- snippets
    use "L3MON4D3/LuaSnip"          --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- LSP
   use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use 'nvim-telescope/telescope-media-files.nvim'
    use 'ThePrimeagen/harpoon'

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }

    -- Illuminate (hilites matches to cursor word)
    use "RRethy/vim-illuminate"

    -- Git
    use "lewis6991/gitsigns.nvim"
    use "tpope/vim-fugitive"

    -- Debugging
--     use { "puremourning/vimspector" }
    use "alpha2phi/DAPInstall.nvim"
    use "mfussenegger/nvim-dap"
    use "leoluz/nvim-dap-go"
    use "theHamsta/nvim-dap-virtual-text"
    use "rcarriga/nvim-dap-ui"
    use "mfussenegger/nvim-dap-python"
    use "nvim-telescope/telescope-dap.nvim"
    use { "jbyuki/one-small-step-for-vimkind", module = "osv" }
   
    -- typescript
    use "mxsdev/nvim-dap-vscode-js"
    --    requires = { 
    --        "microsoft/vscode-js-debug", 
    --        opt = true, 
    --        run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
    --    },
    --    module={"dap-vscode-js"}
    --}

    --rust
    use {
      "simrat39/rust-tools.nvim",
      requires = { "nvim-lua/plenary.nvim", "rust-lang/rust.vim" },
      opt = true,
      module = "rust-tools",
      ft = { "rust" },
    }
    use {
      "saecki/crates.nvim",
      event = { "BufRead Cargo.toml" },
      requires = { { "nvim-lua/plenary.nvim" } },
      config = function()
        -- local null_ls = require "null-ls"
        require("crates").setup {
          null_ls = {
            enabled = true,
            name = "crates.nvim",
          },
        }
      end,
    }

    -- live-server 
    use {
        "barrett-ruth/live-server.nvim",
        run = "pnpm add -g live-server",
        cmd = { "LiveServerStart", "LiveServerStop" },
        config = true
    }

    -- Surround
    use { "tpope/vim-surround", event = "BufReadPre" }


    -- Markdown
    use {
      "iamcco/markdown-preview.nvim",
      run = function()
        vim.fn["mkdp#util#install"]()
      end,
      ft = "markdown",
      cmd = { "MarkdownPreview" },
    }


    -- Terminal
    use "akinsho/toggleterm.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
