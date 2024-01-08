
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


-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end


-- Install your plugins here

return packer.startup(function(use)

    -- My plugins here
    use "wbthomason/packer.nvim"    -- Have packer manage itself
    use "nvim-lua/popup.nvim"       -- An implementation of the Popup API from vim in Neovim
 
    use "nvim-lua/plenary.nvim"     -- Useful lua functions used ny lots of plugins
    use "windwp/nvim-autopairs"     -- Autopairs, integrates with both cmp and treesitter
    use "numToStr/Comment.nvim"     -- Easily comment stuff

    -- color schemes
    use {"adisen99/codeschool.nvim", requires = {"rktjmp/lush.nvim"}}
    use "folke/tokyonight.nvim"
    use "shaunsingh/nord.nvim"
    use "luisiacc/gruvbox-baby"
    use "Yazeed1s/minimal.nvim"
    use "daschw/leaf.nvim"
    use "rebelot/kanagawa.nvim"     -- wave

    -- Illuminate (hilites matches to cursor word)
    use "RRethy/vim-illuminate"

    -- Surround
    use { "tpope/vim-surround", event = "BufReadPre" }
    use {
      "Matt-A-Bennett/vim-surround-funk",
      event = "BufReadPre",
      config = function()
        require("user.surroundfunk").setup()
      end,
      disable = true,
    }



  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)




