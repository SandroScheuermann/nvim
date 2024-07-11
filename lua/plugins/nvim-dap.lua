local P = {
    "mfussenegger/nvim-dap",
    dependencies = {
        "leoluz/nvim-dap-go",
        "rcarriga/nvim-dap-ui",
        'williamboman/mason.nvim',
    },
    config = function()
        Dap = require "dap"
        Ui = require "dapui"

        require("dapui").setup()
        require("dap-go").setup()
    end,
    keys = {
        { "n", "<F5>",       function() Dap.continue() end },
        { "n", "<F4>",       function() Dap.step_out() end },
        { "n", "<F9>",       function() Dap.toggle_breakpoint() end },
        { "n", "<F10>",      function() Dap.step_over() end },
        { "n", "<F11>",      function() Dap.step_into() end },
        { "n", "<F12>",      function() Dap.step_back() end },
        { "n", "<leader>ev", function() Ui.eval(nil, {enter = true}) end },
    },
}

return P
