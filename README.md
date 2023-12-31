Windows 11 : 
    <details>
        <summary>Chocolatey</summary>
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) 
    </details> 
    <details>
        <summary>Neovim</summary>
- choco install neovim
- choco install ripgrep
- choco install mingw
- choco install git
- choco install alacritty
- choco install lazygit
    </details> 
    
## Plugins list  
- Package manager [lazy.nvim](https://github.com/folke/lazy.nvim)
- Syntax highlighting [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)    
- Simple git integration [vim-fugitive](https://github.com/tpope/vim-fugitive)
- Pre-configured float terminal with lazygit [float-terminal-lazygit](https://github.com/kdheepak/lazygit.nvim)
- LSP "manager", it is a bundle of plugins, mason, auto-complete plugins, etc. [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim) 
- Literally an undo tree... [undotree](https://github.com/mbbill/undotree)
- Colorscheme [catppuccin](https://github.com/catppuccin/nvim)
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

## Lazygit
- leader + g + g = git git (????)

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
  - leader + (tabnumber) = go to specific tab
    
## Saving buffers
  - leader + s + f = force save current buffer (save file)
  - leader + s + a = force save all buffers (save all files)

## On code completion
  - tab = next selection
  - shift + tab = previous selection
  - enter = select current selection

## Misc
  - leader + t + b = toggle transparent background 
