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
                    which_key = true,
                    telescope = true,
                    treesitter = true,
                    notify = true
                },
                custom_highlights = function(cp)
                    return {
                        DiagnosticVirtualTextError = { bg = cp.none },
                        DiagnosticVirtualTextWarn = { bg = cp.none },
                        DiagnosticVirtualTextInfo = { bg = cp.none },
                        DiagnosticVirtualTextHint = { bg = cp.none },
                    }
                end
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
    use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
    -- nvim navic
    use {
        "SmiteshP/nvim-navic",
        requires = "neovim/nvim-lspconfig"
    }
    -- nvim gitsigns
    use {
        "lewis6991/gitsigns.nvim"
    }
    -- lualine status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- plenary nvim lib
    use "nvim-lua/plenary.nvim"
    -- telescope fzf native
    use { "nvim-telescope/telescope-fzf-native.nvim",
        run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build" }
    -- telescope
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.0",
        requires = { { "nvim-lua/plenary.nvim" } }
    }
    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    -- Trouble - code warning and error list
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }
    use {
        "numToStr/Comment.nvim"
    }
    use {
        "rcarriga/nvim-notify"
    }
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    use {
        "ThePrimeagen/harpoon",
        requires = "nvim-lua/plenary.nvim"
    }
    use {
        "dhruvasagar/vim-table-mode"
    }
    use "windwp/nvim-autopairs"
    use "windwp/nvim-ts-autotag"
    use "onsails/lspkind.nvim"
    use "lewis6991/impatient.nvim"
    use {
        "kylechui/nvim-surround",
        tag = "*"
    }
end)
