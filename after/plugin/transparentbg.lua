require("transparent").setup({
	groups = {
		'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
		'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
		'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
		'SignColumn', 'CursorLineNr', 'EndOfBuffer',
	},
	extra_groups = {"NvimTreeNormal"},
	exclude_groups = {},
})


vim.keymap.set("n", "<Leader>tb",vim.cmd.TransparentToggle)
