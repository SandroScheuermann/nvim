local P = {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = { "mfussenegger/nvim-dap", "rcarriga/nvim-dap-ui" },
    config = function() require("dap-go").setup() end,
    keys = {
        { "<F9>",  ":DapToggleBreakpoint<CR>", desc = "Toggle breakpoint" },
        { "<F5>",  ":DapContinue<CR>",         desc = "Start/Continue debugging" },
        { "<F10>", ":DapStepOver<CR>",         desc = "Step over" },
        { "<F11>", ":DapStepInto<CR>",         desc = "Step into" },
        { "<F12>", ":DapStepOut<CR>",          desc = "Step out" },
        { '<leader>dio', function()
            local widgets = require('dap.ui.widgets');
            local sidebar = widgets.sidebar(widgets.scopes);
            sidebar.open()
        end }
    }
}
return P
