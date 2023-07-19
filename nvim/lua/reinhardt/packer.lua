-- WHERE ALL PACKAGES INSTALLED WITH PACKER ARE SPECIFIED 

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope ===================================================================

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- =============================================================================


  -- Colour Schemes ==============================================================

  use("EdenEast/nightfox.nvim") -- Packer
  use("oxfist/night-owl.nvim")

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
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
          {'simrat39/rust-tools.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  -- =============================================================================

end)
