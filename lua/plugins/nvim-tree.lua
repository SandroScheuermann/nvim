local P = {
	"nvim-tree/nvim-tree.lua",
	config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
		vim.opt.termguicolors = true
		sort_by = "case_sensitive"
		view = { width = 30}
		renderer = { group_empty = true}
		filters = { dotfiles = true}
        require("nvim-tree").setup({})
	end,
    dependencies = {
    "nvim-tree/nvim-web-devicons",
    },
	keys = {
	{"<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle tree"},

	}
} return P
