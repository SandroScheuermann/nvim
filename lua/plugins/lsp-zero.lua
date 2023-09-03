local P = {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        lazy = true,
        config = function()
            require('lsp-zero.settings').preset({})
            disabled_plugins = {
                -- "gzip",
                -- "matchit",
                -- "matchparen",
                -- "netrwPlugin",
                -- "tarPlugin",
                -- "tohtml",
                -- "tutor",
                -- "zipPlugin",
            }
        end
    },
    {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            {'L3MON4D3/LuaSnip'},
        },
        config = function()
            require('lsp-zero.cmp').extend()
            local cmp = require('cmp')
            local cmp_action = require('lsp-zero.cmp').action() 

            cmp.setup({
                mapping = {
                    ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
                    ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
                    ['<CR>'] = cmp.mapping.confirm({ select = true })                }
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
        cmd = 'LspInfo',
        event = {'BufReadPre', 'BufNewFile'},
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp'},
            {'williamboman/mason-lspconfig.nvim'},
            {'williamboman/mason.nvim'},
        },
        config = function()
            -- This is where all the LSP shenanigans will live
            local lsp = require('lsp-zero')

            lsp.ensure_installed(
                {
                    'omnisharp',
                    'lua_ls',
                    'gopls'
                }
            )

            lsp.on_attach(function(client, bufnr)
                lsp.default_keymaps({buffer = bufnr})
                vim.keymap.set("n", "gd" , function() vim.lsp.buf.definition() end)
                vim.keymap.set("n", "<leader>vws" , function() vim.lsp.buf.workspace_symbol() end)
                vim.keymap.set("n", "<leader>vd" , function() vim.lsp.buf.open_float() end)
                vim.keymap.set("n", "]d" , function() vim.lsp.buf.goto_next() end)
                vim.keymap.set("n", "[d" , function() vim.lsp.buf.goto_prev() end)
                vim.keymap.set("n", "<leader>ca" , function() vim.lsp.buf.code_action() end)
                vim.keymap.set("n", "<leader>cr" , function() vim.lsp.buf.references() end)
                vim.keymap.set("n", "<leader>vrn" , function() vim.lsp.buf.rename() end)
                vim.keymap.set("n", "<C-h>" , function() vim.lsp.buf.signature_help() end)
            end)

            -- (Optional) Configure lua language server for neovim
            require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

            lsp.setup()
        end
    }
}
return P
