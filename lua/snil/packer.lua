-- This file can be loaded by calling `lua require('packer')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- colorscheme
  use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
        require("catppuccin").setup {
            flavour = "macchiato", -- mocha, macchiato, frappe, latte
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                which_key = true
            }
        }
        vim.api.nvim_command("colorscheme catppuccin")
    end
  }
  -- which key plugin
  use {
    "folke/which-key.nvim",
    config = function() 
        require("which-key").setup {
        }
    end
  }
  -- nvim tree file explorer
  use {
      "nvim-tree/nvim-tree.lua",
      requires = {
        "nvim-tree/nvim-web-devicons"
      }
  }
  -- collection of configurations for built-in LSP client
  use "neovim/nvim-lspconfig"
  -- autocompletion plugin
  use "hrsh7th/nvim-cmp"
  -- LSP source for nvim-cmp
  use "hrsh7th/cmp-nvim-lsp"
  -- snippets source for nvim-cmp
  use "saadparwaiz1/cmp_luasnip"
  -- snippets plugin
  use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
  -- nvim navic
  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  }
  -- nvim gitsigns
  use {
    "lewis6991/gitsigns.nvim"
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
