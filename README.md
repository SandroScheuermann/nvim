## Plugins list  
- Package manager, probably I'll be migrating to lazy afterwards [packer](https://github.com/wbthomason/packer.nvim)
- Syntax highlighting [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)    
- Git integration [vim-fugitive](https://github.com/tpope/vim-fugitive) 
- LSP "manager", it is a bundle of plugins, mason, auto-complete plugins, etc. [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim) 
- Literally an undo tree... [undotree](https://github.com/mbbill/undotree)
- Colorscheme [catppuccin]([https://github.com/EdenEast/nightfox.nvim](https://github.com/catppuccin/nvim))
- File finder [telescope](https://github.com/nvim-telescope/telescope.nvim)
- Tree explorer [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- Cool floating cmd [fine-cmdline](https://github.com/VonHeikemen/fine-cmdline.nvim)
- Cool tabs [tabby](https://github.com/nanozuki/tabby.nvim)

<h1 align="center">Keybinds</h1>

## NvimTree
  - Leader + e (explore) = toggle nvimtree
  - a = add file (inside tree buffer)
  - d = delete file (inside tree buffer)
  - r = rename file (inside tree buffer)
 
## Telescope
- leader + f + f (find files) = find normal
- leader + f + g (find git) = find files git
- leader + f + s (find specific) = find specific 

## Vim-Fugitive
- leader + g + s = git status
- leader + g + c = git commit -a
- leader + g + p = git push
- leader + g + d = git diff 

## VSP-Zero
  - g + d = go to definition
  - ] + d = go to next hint
  - [ + d = go to previous hint
  - leader + c + a = code action
  - leader + c + r = code references
  - leader + v + r + n = variable rename
  - ctrl + h = signature help

## Tab navigating
  - ctrl + t = opens a new tab
  - ctrl + q / e = navigate through left / right tabs
  - ctrl + w = close current tab
  - leader + (tabnumber) = goto specific tab
    
## Saving buffers
  - leader + s + f = force save current buffer (save file)
  - leader + s + a = force save all buffers (save all files)

## On code completion
  - tab = next selection
  - shift + tab = previous selection
  - enter = selects current selection

## Misc
  - leader + t + b = toggle transparent background 
