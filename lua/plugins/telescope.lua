local P = {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    config = function()
        require("telescope").setup({})
    end,
    keys = {
        { 'n', '<leader>fg', function() require('elescope.builtin').git_files({}) end },
        { 'n', '<leader>ff', function() require('telescope.builtin').find_files({}) end },
        { 'n', '<leader>fs', function() require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") }); end }
    }
}

return P
