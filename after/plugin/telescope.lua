local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', function()
builtin.grep_string({ search = vim.fn.input("Grep > ")});end)

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = builtin.find_files })
