local P = {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            source_selector = {
                winbar = true,
                content_layout = "center",
                tab_labels = {
                    filesystem = " Files",
                    git_status = " Git",
                    buffers = " Buffer",
                    diagnostics = "",
                },
            },
            default_component_configs = {
                indent = {
                    padding = 0,
                },
                icon = {
                    folder_closed = "",
                    folder_open = "",
                    folder_empty = "",
                },
                git_status = {
                    symbols = {
                        unstaged = "✗",
                        staged = "✓",
                        unmerged = "",
                        renamed = "➜",
                        untracked = "★",
                        deleted = "",
                        ignored = "◌",
                    },
                },
            },
            window = {
                width = 30,
                position = "right",
                mappings = {
                    ["o"] = "open",
                    ["v"] = "open_vsplit",
                },
            },
            filesystem = {
                follow_current_file = true,
                hijack_netrw_behavior = "open_current",
                use_libuv_file_watcher = true,
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                },
            },
            event_handlers = {
                {
                    event = "neo_tree_buffer_enter",
                    handler = function(_)
                        vim.opt_local.signcolumn = "auto"
                    end,
                },
            },
        })
    end,
    keys = {
        { "<leader>e", ":Neotree toggle <CR>", desc = "Toggle explorer" },
    }
}

return P
