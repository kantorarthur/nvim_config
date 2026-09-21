-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.8',
	  requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use({
	  "rose-pine/neovim",
	  name = "rose-pine",
	  config = function()
		  vim.cmd("colorscheme rose-pine")
	  end
  })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('mbbill/undotree')
  use('tpope/vim-fugitive')


  -- LSP Management
  use {
	  'williamboman/mason.nvim',
	  'williamboman/mason-lspconfig.nvim',
	  'neovim/nvim-lspconfig',
  }

  -- Autocompletare (cmp)
  use 'hrsh7th/nvim-cmp'         -- engine-ul prinicpal de cmp 
  use 'hrsh7th/cmp-nvim-lsp'     -- Sursa de autocompletare din LSP
  use 'L3MON4D3/LuaSnip'         -- Snippet engine (necesar pt cmp)  


end)
