return {
  "lukas-reineke/indent-blankline.nvim",
  event = "CursorMoved",
  config = function()
    require("ibl").setup()
  end
}