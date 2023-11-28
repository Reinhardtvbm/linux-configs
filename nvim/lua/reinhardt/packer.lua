-- WHERE ALL PACKAGES INSTALLED WITH PACKER ARE SPECIFIED

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope ===================================================================

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- =============================================================================


    -- Colour Schemes ==============================================================

    use("EdenEast/nightfox.nvim") -- Packer
    use("oxfist/night-owl.nvim")
    use { "catppuccin/nvim", as = "catppuccin" }

    -- =============================================================================


    -- Treesitter ==================================================================

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- =============================================================================


    -- Harpoon =====================================================================

    use("ThePrimeagen/harpoon")

    -- =============================================================================


    -- LSP =========================================================================

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'simrat39/rust-tools.nvim' },

            -- Completion framework:
            { 'hrsh7th/nvim-cmp' },

            -- LSP completion source:
            { 'hrsh7th/cmp-nvim-lsp' },

            -- Useful completion sources:
            { 'L3MON4D3/LuaSnip' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'hrsh7th/cmp-nvim-lsp-signature-help' },
            { 'hrsh7th/cmp-vsnip' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/vim-vsnip' },
        }
    }

    use("elentok/format-on-save.nvim")

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    -- =============================================================================
end)
