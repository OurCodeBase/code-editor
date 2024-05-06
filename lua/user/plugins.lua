-- check and install lazy if unavailable.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({'git', 'clone', '--depth=1', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', lazypath})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- core plugins.
  'OurCodeBase/everforest-nvim', -- everforest colors.
  'nvim-lualine/lualine.nvim', -- lualine statusline.
  { 'windwp/nvim-autopairs', event = "InsertEnter", -- autopairs.
    config = function()
      require("nvim-autopairs").setup {}
    end
  },
  -- completion.
  { 'hrsh7th/nvim-cmp', event = "InsertEnter" }, -- the completion engine.
  { 'hrsh7th/cmp-buffer', event = "InsertEnter" }, -- buffer completion.
  { 'hrsh7th/cmp-path', event = "InsertEnter" }, -- path completion.
  { 'hrsh7th/cmp-cmdline', event = "VeryLazy" }, -- cmdline completion.
  -- snippets.
  { 'L3MON4D3/LuaSnip', event = "VeryLazy" }, -- snippet engine.
  { 'saadparwaiz1/cmp_luasnip', event = "VeryLazy" }, -- snippet connector.
  'OurCodeBase/friendly-snippets', -- snippet collection.
})

