local P = {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            commands = {
                popup_border_style = "rounded",
                show_diff = function(state)
                    -- some variables. use any if you want
                    local node = state.tree:get_node()
                    -- local abs_path = node.path
                    -- local rel_path = vim.fn.fnamemodify(abs_path, ":~:.")
                    -- local file_name = node.name
                    local is_file = node.type == "file"
                    if not is_file then
                        vim.notify("Diff only for files", vim.log.levels.ERROR)
                        return
                    end
                    -- open file
                    local cc = require("neo-tree.sources.common.commands")
                    cc.open(state, function()
                        -- do nothing for dirs
                    end)

                    -- I recommend using one of below to show the diffs

                    -- Raw vim
                    -- git show ...: change arg as you want
                    -- @: current file vs git head
                    -- @^: current file vs previous commit
                    -- @^^^^: current file vs 4 commits before head and so on...
--                    vim.cmd([[
--                    !git show @^:% > /tmp/%
--                    vert diffs /tmp/%
--                    ]])
                    -- diffview.nvim
                    vim.cmd([[DiffviewOpen -- %]])
                end,
            },
            close_if_last_window = true,
            popup_border_style = "rounded",
            source_selector = {
                winbar = true,
                statusline = false,
                sources = {
                    { source = "filesystem" },
                    { source = "git_status" },
                    { source = "buffers" },
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
                    ["D"] = "show_diff",
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
