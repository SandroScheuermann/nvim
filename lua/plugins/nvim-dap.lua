local P = {
    "mfussenegger/nvim-dap",
    dependencies = {
        --"leoluz/nvim-dap-go",
        "nvim-neotest/nvim-nio",
        "rcarriga/nvim-dap-ui",
        'williamboman/mason.nvim',
    },
    lazy = false,
    config = function()
        require("dapui").setup()

        Dap = require "dap"
        Ui = require "dapui"

        Dap.adapters.go = {
            type = 'executable',
            command = 'node',
            args = { "E:\\nvim-dap-go\\vscode-go\\extension\\dist\\debugAdapter.js" },
        }
        Dap.configurations.go = {
            {
                type = 'go',
                name = 'Debug',
                request = 'launch',
                showLog = false,
                program = "${file}",
                dlvToolPath = "E:\\gopath\\bin\\dlv.exe" -- Adjust to where delve is installed
            },
        }
        vim.keymap.set("n", "<F3>", function() Dap.step_out() end)
        vim.keymap.set("n", "<F5>", function() Dap.continue() end)
        vim.keymap.set("n", "<F9>", function() Dap.toggle_breakpoint() end)
        vim.keymap.set("n", "<F10>", function() Dap.step_over() end)
        vim.keymap.set("n", "<F11>", function() Dap.step_into() end)
        vim.keymap.set("n", "<F12>", function() Dap.step_back() end)
        vim.keymap.set("n", "<leader>ev", function() Ui.eval(nil, { enter = true }) end)

        Dap.listeners.before.attach.dapui_config = function()
            Ui.open()
        end
        Dap.listeners.before.launch.dapui_config = function()
            Ui.open()
        end
        Dap.listeners.before.event_terminated.dapui_config = function()
            Ui.close()
        end
        Dap.listeners.before.event_exited.dapui_config = function()
            Ui.close()
        end
    end,
}
return P
