vim.g.mapleader = " "

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "q", "<nop>")
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-q>", vim.cmd.tabNext)
vim.keymap.set("n", "<C-e>", vim.cmd.tabnext)
vim.keymap.set("n", "<C-t>", vim.cmd.tabnew)
vim.keymap.set("n", "<leader>4", vim.cmd.tabclose)

vim.keymap.set("n", "<leader>sf", function() vim.cmd("w!") end)
vim.keymap.set("n", "<leader>sa", function() vim.cmd("wa!") end)
vim.keymap.set("n", "<leader>cf", function() vim.cmd("lua vim.lsp.buf.format()") end)

vim.keymap.set("n", "<leader>ve", function() vim.diagnostic.open_float(nil, {scope="line"}) end)
