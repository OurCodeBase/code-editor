-- check and install packer if unavailable.
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Plugin for packer starter.
  use 'wbthomason/packer.nvim'
  -- Plugin for everforest colorscheme.
  use 'OurCodeBase/everforest-nvim'
  -- Plugin for lualine for ui.
  use 'nvim-lualine/lualine.nvim'
  -- Plugin for auto pairs.
  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }
  -- Plugin for nvim-completion.
  use 'hrsh7th/nvim-cmp'
  -- Plugin for buffer completion.
  use 'hrsh7th/cmp-buffer'
  -- Plugin for path completion.
  use 'hrsh7th/cmp-path'
  -- Plugin for cmdline completion.
  use 'hrsh7th/cmp-cmdline'
  -- Plugin for snippets.
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  -- Plugin for snippet collection.
  use 'OurCodeBase/friendly-snippets'
  if packer_bootstrap then
    require('packer').sync()
  end
end)
