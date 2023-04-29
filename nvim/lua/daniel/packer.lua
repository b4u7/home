-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescope.nvim
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- colorscheme
  use { 
	  'olivercederborg/poimandres.nvim',
	  config = function()
		  require('poimandres').setup {
			  -- leave this setup function empty for default config
			  -- or refer to the configuration section
			  -- for configuration options
		  }
	  end
  }

  -- treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
end)
