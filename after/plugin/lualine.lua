--local navic = require("nvim-navic")


require("lualine").setup {
    options = {
        theme = "catppuccin"
        -- ... the rest of your lualine config
    },
--    sections = {
--        lualine_c = {
--            { { navic.get_location, cond = navic.is_available } }
--        }
--    }
}
