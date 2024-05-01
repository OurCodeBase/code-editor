-- settings for plugins and list plugins.
require("user.packer")
-- settings for everforest colors.
require("everforest").setup {
  background = "hard",
  ui_contrast = "low",
  dim_inactive_windows = false,
  better_performance = true,
}
-- activation of everforest colors.
require("everforest").load()
-- settings for lualine statusline.
require("lualine").setup {
  options = {
    theme = 'auto',
    icons_enabled = false
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {'filetype'},
    lualine_z = {'location'}
  },
}
-- settings for wilder.nvim.
local wilder = require("wilder")
wilder.setup({
  modes = {':', '/', '?'},
  next_key = '<Down>',
  previous_key = '<Up>',
  accept_key = '<Tab>',
  reject_key = '<Left>',
})
-- settings for wilder.nvim for rounded border.
wilder.set_option('renderer', wilder.popupmenu_renderer(
  wilder.popupmenu_border_theme({
    highlighter = wilder.basic_highlighter(),
    border = 'rounded',
  })
))
-- settings for options or sets.
require("user.options")
-- settings for vscode key shortcuts.
require("user.keymaps")
