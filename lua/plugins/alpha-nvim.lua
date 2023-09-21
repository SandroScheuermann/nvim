local P = {
    'goolord/alpha-nvim',
    config = function()
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            "⣿⣿⣿⣿⣿⣿⣿⡿⠛⠥⠖⠈⠩⠭⠭⠉⠉⠠⢤⣬⡙⢿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⢁⣶⠶⢦⡄⢸⣾⣿⡆⠀⣤⣶⢶⣬⡀⢿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⡏⠈⠷⠤⠼⢃⣨⣤⣤⣤⡈⠿⢅⣀⣿⡇⢸⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⠇⣶⡶⢠⢾⣿⣿⣿⣿⣿⢻⡄⢰⣶⣶⣶⠘⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⡏⢰⣿⠁⣿⣾⣿⣿⣿⣿⣿⣾⣿⡆⢹⣿⣿⡄⢿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⡇⢸⡿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠈⣿⣿⡿⠦⢬⣙⠻⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣷⡈⣧⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⡿⠁⠀⠀⠈⢷⡌⢿⣿",
            "⣿⣿⣿⣿⣿⣿⣷⢸⣧⡙⠿⣿⣿⣿⣿⣿⣿⡿⠟⢠⣿⠇⠀⠀⠀⠀⢸⣿⠘⣿",
            "⣿⣿⣿⣿⡿⠟⣋⣄⠻⣄⠀⢨⢙⡛⣩⢭⡤⡀⠀⣸⠏⣰⣆⡀⠀⠀⢸⣿⡆⣿",
            "⣿⣿⠟⣉⣤⣾⣿⣿⣷⣌⠑⠶⣦⣤⣥⣴⣶⡾⠟⢁⣼⣿⣿⣿⣶⣄⡀⣿⣧⠹",
            "⡿⢡⣾⣿⣿⡟⢛⠻⣿⣿⣷⣤⣄⠉⠉⠉⢁⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣌⠻⡆",
            "⣱⣿⣿⣿⡿⢰⣿⣷⣌⡛⠿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄",
            "⣿⣿⣿⡟⣰⣿⣿⣿⣿⣿⣷⣦⣤⣭⣉⣭⣭⣭⣤⣤⣶⣆⠻⠿⠿⣿⣿⣿⣿⣿",
            "⣿⣿⠟⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⢸⣿⣿⣿⣿", }
        dashboard.section.buttons.val = {
            dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "󰭎  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
            dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
            dashboard.button("t", "󱘎 > Tree explorer", ":Neotree toggle<CR>"),
            dashboard.button("q", "󰩈 > Quit NVIM", ":qa!<CR>"),
        }

        require "alpha".setup(dashboard.opts)
    end
};

return P
