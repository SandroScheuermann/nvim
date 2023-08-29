vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use
	{
		'nvim-telescope/telescope.nvim', 
		tag = '0.1.2',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 
	{
		use "EdenEast/nightfox.nvim", 
		as = "nightfox",
		config = function() vim.cmd('colorscheme nightfox') end
	}

	use{'xiyaowong/transparent.nvim',}

	use 
	{
		'nvim-treesitter/nvim-treesitter',
		run = {':TSUpdate'}
	}

	use{'theprimeagen/harpoon'}

	use{'mbbill/undotree'}

	use{'tpope/vim-fugitive'}


end)
		
