local P = {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        lazy = true,
        config = function()
            require('lsp-zero.settings').preset({})
        end
    },
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            { 'L3MON4D3/LuaSnip' },
        },
        config = function()
            require('lsp-zero.cmp').extend()
            local cmp = require('cmp')
            local cmp_action = require('lsp-zero.cmp').action()

            cmp.setup({
                mapping = {
                    ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
                    ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
                    ['<CR>'] = cmp.mapping.confirm({ select = true })
                }
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
        cmd = 'LspInfo',
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'williamboman/mason.nvim' },
        },
        config = function()
            -- This is where all the LSP shenanigans will live
            local lsp = require('lsp-zero')

            lsp.ensure_installed(
                {
                    'omnisharp',
                    'lua_ls',
                    'gopls',
                }
            )

            lsp.on_attach(function(client, bufnr)
                lsp.default_keymaps({ buffer = bufnr })
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
                vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
                vim.keymap.set("n", "<leader>vd", function() vim.lsp.buf.open_float() end)
                vim.keymap.set("n", "]d", function() vim.lsp.buf.goto_next() end)
                vim.keymap.set("n", "[d", function() vim.lsp.buf.goto_prev() end)
                vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end)
                vim.keymap.set("n", "<leader>cr", function() vim.lsp.buf.references() end)
                vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end)
                vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end)
            end)

            require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

            require('lspconfig').gopls.setup {
                gopls = {
                    gofumpt = true,
                    codelenses = {
                        gc_details = false,
                        generate = true,
                        regenerate_cgo = true,
                        run_govulncheck = true,
                        test = true,
                        tidy = true,
                        upgrade_dependency = true,
                        vendor = true,
                    },
                    hints = {
                        assignVariableTypes = true,
                        compositeLiteralFields = true,
                        compositeLiteralTypes = true,
                        constantValues = true,
                        functionTypeParameters = true,
                        parameterNames = true,
                        rangeVariableTypes = true,
                    },
                    analyses = {
                        fieldalignment = true,
                        nilness = true,
                        unusedparams = true,
                        unusedwrite = true,
                        useany = true,
                    },
                    usePlaceholders = true,
                    completeUnimported = true,
                    staticcheck = true,
                    directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
                    semanticTokens = true
                }
            }

            lsp.setup()
        end
    }
}
return P
