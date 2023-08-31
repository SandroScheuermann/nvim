vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-1<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "Q", "<nop>") -- reza a lenda que é zoado apertar Q...

--vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<C-q>", vim.cmd.tabNext)
vim.keymap.set("n", "<C-e>", vim.cmd.tabnext)
vim.keymap.set("n", "<C-w>", vim.cmd.tabclose)
vim.keymap.set("n", "<C-t>", vim.cmd.tabnew)

vim.keymap.set("n", "<leader>1", function() vim.cmd("tabnext1") end)
vim.keymap.set("n", "<leader>2", function() vim.cmd("tabnext2") end)
vim.keymap.set("n", "<leader>3", function() vim.cmd("tabnext3") end)
vim.keymap.set("n", "<leader>4", function() vim.cmd("tabnext4") end)
vim.keymap.set("n", "<leader>5", function() vim.cmd("tabnext5") end)
vim.keymap.set("n", "<leader>6", function() vim.cmd("tabnext6") end)
vim.keymap.set("n", "<leader>7", function() vim.cmd("tabnext7") end)
vim.keymap.set("n", "<leader>8", function() vim.cmd("tabnext8") end)
vim.keymap.set("n", "<leader>9", function() vim.cmd("tabnext9") end)

vim.keymap.set("n", "<leader>sf", function () vim.cmd("w!") end)
vim.keymap.set("n", "<leader>sa", function () vim.cmd("wa!") end)
