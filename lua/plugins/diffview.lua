local P =
{
    "sindrets/diffview.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("diffview").setup()
    end,
}
return P
