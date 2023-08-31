local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	'omnisharp',
    'lua_ls',
})

lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
    --Checar se vou realmente precisar desta bind ! ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true })
  }
})

lsp.on_attach(function(client)
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd" , function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "<leader>vws" , function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd" , function() vim.lsp.buf.open_float() end, opts)
	vim.keymap.set("n", "]d" , function() vim.lsp.buf.goto_next() end, opts)
	vim.keymap.set("n", "[d" , function() vim.lsp.buf.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>ca" , function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>cr" , function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn" , function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("n", "<C-h>" , function() vim.lsp.buf.signature_help() end, opts)

end)

lsp.setup()
