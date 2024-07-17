return {
  "OurCodeBase/everforest-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local everforest = require("everforest")
    everforest.setup {
      background = "hard",
      ui_contrast = "low",
      dim_inactive_windows = false,
      better_performance = true,
      disable_italic_comments = true,
    }
    everforest.load()
  end
}
