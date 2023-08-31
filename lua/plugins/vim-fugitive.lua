local P = { "tpope/vim-fugitive",
config = true,
keys = {
	{"<leader>gs", function() vim.cmd("tab G") end, "n"},
	{"<leader>gc", function() vim.cmd("tab G commit -a") end, "n"},
	{"<leader>gp", function() vim.cmd("tab G push") end, "n"},
	{"<leader>gd", function() vim.cmd("tab G diff") end , "n"},
}
} return P
