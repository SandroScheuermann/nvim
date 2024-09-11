local P = {
    "mfussenegger/nvim-dap",
    dependencies = {
        "leoluz/nvim-dap-go",
        "nvim-neotest/nvim-nio",
        "rcarriga/nvim-dap-ui",
        "theHamsta/nvim-dap-virtual-text",
        'williamboman/mason.nvim',
    },
    lazy = false,
    config = function()
        Dap = require "dap"
        Ui = require "dapui"

        require("dapui").setup()
        require("nvim-dap-virtual-text").setup()
        require("dap-go").setup()

        Dap.adapters.delve = {
            type = 'server',
            port = '${port}',
            executable = {
                command = 'dlv',
                args = { 'dap', '-l', '127.0.0.1:${port}' },
                detached = false
            }
        }

        Dap.adapters.coreclr = {
            type = 'executable',
            command = '/path/to/dotnet/netcoredbg/netcoredbg',
            args = { '--interpreter=vscode' }
        }

        Dap.configurations.cs = {
            {
                type = "coreclr",
                name = "launch - netcoredbg",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
                end,
            },
        }

        Dap.configurations.go = {
            {
                type = "delve",
                name = "Debug",
                request = "launch",
                program = "${file}"
            },
            {
                type = "delve",
                name = "Debug package",
                request = "launch",
                program = "${workspaceFolder}"
            },
            {
                type = "delve",
                name = "Debug test",
                request = "launch",
                mode = "test",
                program = "${file}"
            },
            {
                type = "delve",
                name = "Debug test (go.mod)",
                request = "launch",
                mode = "test",
                program = "./${relativeFileDirname}"
            }
        }

        vim.keymap.set("n", "<F3>", function() Dap.step_out() end)
        vim.keymap.set("n", "<F5>", function() Dap.continue() end)
        vim.keymap.set("n", "<F9>", function() Dap.toggle_breakpoint() end)
        vim.keymap.set("n", "<F10>", function() Dap.step_over() end)
        vim.keymap.set("n", "<F11>", function() Dap.step_into() end)
        vim.keymap.set("n", "<F12>", function() Dap.step_back() end)
        vim.keymap.set("n", "<leader>ev", function() Ui.eval(nil, { enter = true }) end)
        vim.keymap.set("n", "<leader>d", function() Ui.toggle() end, { noremap = true })

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
