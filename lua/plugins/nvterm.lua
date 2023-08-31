local handler = function()
    require("nvterm.terminal").toggle("horizontal")
end

local setup = {
    shell = vim.o.shell,
    list = {},
    type_opts = {
        float = {
            relative = 'editor',
            row = 0.5,
            col = 0.5,
            width = 0.55,
            height = 0.55,
            border = "single",
        },
        horizontal = { location = "rightbelow", split_ratio = .3, },
        vertical = { location = "rightbelow", split_ratio = .5 },
    }
}

return {
    "NvChad/nvterm",
    lazy = false,
    config = function()
        require("nvterm").setup(
            {terminals = setup,
             behavior = {auto_insert = true},
            })
    end,
    keys = {
        { "<leader>th", handler, desc = "Open terminal horizontally" },
    },
}
