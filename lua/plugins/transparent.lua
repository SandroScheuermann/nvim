local P = {
    lazy = false,
    "xiyaowong/transparent.nvim",
    config = function() require("transparent").setup({}) end,
   keys = {
	{"<leader>tb", ":TransparentToggle<CR>", desc = "Transparent Toggle"},
    }

} return P
