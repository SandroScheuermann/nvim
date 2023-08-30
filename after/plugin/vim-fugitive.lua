vim.keymap.set("n", "<leader>gs", function() vim.cmd("tab G") end)
vim.keymap.set("n", "<leader>gc", function() vim.cmd("tab G commit -a") end)
vim.keymap.set("n", "<leader>gs", function() vim.cmd("tab G push") end)
vim.keymap.set("n", "<leader>gd", function() vim.cmd("tab G diff") end)
