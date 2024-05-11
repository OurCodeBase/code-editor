return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require("lualine")
    lualine.setup {
      options = {
        theme = "auto",
        icons_enabled = false
      },
      sections = {
        lualine_a = {"mode"},
        lualine_b = {"filename"},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {"filetype"},
        lualine_z = {"location"}
      },
    }
  end
}