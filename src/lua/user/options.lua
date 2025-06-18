-- needed settings for text editor.
vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.cursorline = true
vim.opt.fileencoding = "utf-8"
vim.opt.foldmethod = "indent"
vim.opt.splitbelow = true

-- needed for 24-bit colors.
vim.opt.termguicolors = true

-- no need of any backup file.
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- tabs and indents.
vim.opt.tabstop = 2
-- vim.opt.showtabline = 2 -- quick file tabs on the top.
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.modifiable = true

-- extend html filetype support for ejs.
vim.filetype.add({
  extension = {
    ejs = "html",
  },
})
