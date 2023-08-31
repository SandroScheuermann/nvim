local P = {
    'VonHeikemen/fine-cmdline.nvim',
    config = function()
        require("fine-cmdline").setup({})
    end,
    dependencies = {
        {'MunifTanjim/nui.nvim'}
    },
    keys = {
        {":", ":FineCmdline<CR>"},
    },
}
return P
