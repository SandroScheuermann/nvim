local P = {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function() require("dap-go").setup() end,
    keys = {
        { '<leader>db', function() vim.cmd("DapToggleBreakpoint <CR>") end },
        { '<leader>di', function()
            local widgets = require('dap.ui.widgets');
            local sidebar = widgets.sidebar(widgets.scopes);
            sidebar.open()
        end },
    }
}
return P
