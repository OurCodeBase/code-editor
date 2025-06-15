return {
  "akinsho/bufferline.nvim",
  event = "TabNewEntered",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup{}
  end
}
