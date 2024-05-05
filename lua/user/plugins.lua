-- check and install lazy if unavailable.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({'git', 'clone', '--depth=1', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', lazypath})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Plugin for everforest colorscheme.
  'OurCodeBase/everforest-nvim',
  -- Plugin for lualine for ui.
  'nvim-lualine/lualine.nvim',
  -- Plugin for auto pairs.
  {
    'windwp/nvim-autopairs', event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup {}
    end
  },
  -- Plugin for nvim-completion.
  { 'hrsh7th/nvim-cmp', event = "InsertEnter" },
  -- Plugin for buffer completion.
  { 'hrsh7th/cmp-buffer', event = "InsertEnter" },
  -- Plugin for path completion.
  { 'hrsh7th/cmp-path', event = "InsertEnter" },
  -- Plugin for cmdline completion.
  { 'hrsh7th/cmp-cmdline', event = "VeryLazy" },
  -- Plugin for snippets.
  { 'L3MON4D3/LuaSnip', event = "VeryLazy" },
  { 'saadparwaiz1/cmp_luasnip', event = "VeryLazy" },
  -- Plugin for snippet collection.
  'OurCodeBase/friendly-snippets',
})

