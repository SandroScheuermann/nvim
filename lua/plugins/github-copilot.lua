local P =
{
    "github/copilot.vim",
    lazy = false,
    configure = function()
        require("copilot").setup()
        vim.g.copilot_assume_mapped = true
        vim.g.copilot_filetypes = {
            ["*"] = true,
        }
    end,
    keys = {
        { "<leader>gc", ":Copilot panel<CR>", desc = "Opens copilot panel" },
    }
}
return P
