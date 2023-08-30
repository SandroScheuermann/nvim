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
   'catppuccin/nvim',
   as = "catppuccin",
   config = function()
   vim.cmd('colorscheme catppuccin') end
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


use {
   'VonHeikemen/lsp-zero.nvim',
   branch = 'v2.x',
   requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
   }
}
use{'nvim-tree/nvim-tree.lua'}

use
{
    'folke/noice.nvim',
    requires = {
        {'rcarriga/nvim-notify'},
        {'MunifTanjim/nui.nvim'},
    }

}

use{"nanozuki/tabby.nvim"}

end)

