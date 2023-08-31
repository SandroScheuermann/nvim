local P = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed =
            {"vim","regex","bash","markdown","markdown_inline","javascript", "typescript", "c_sharp","c", "lua", "rust" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            auto_install = false,
        })
    end
}

return { P }
