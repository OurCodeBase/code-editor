return {
  "smjonas/inc-rename.nvim",
  event = "VeryLazy",
  config = function()
    local inc_rename = require("inc_rename")
    inc_rename.setup()
    vim.keymap.set("n", "R", function()
      return ":IncRename " .. vim.fn.expand("<cword>")
    end, { expr = true })
  end
}
