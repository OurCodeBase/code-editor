return {
  -- completions
  "hrsh7th/nvim-cmp", -- completion engine
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer", -- buffer completion
    "hrsh7th/cmp-path", -- path completion
    { "hrsh7th/cmp-cmdline", event = "CmdlineEnter" }, -- cmdline completion
    "hrsh7th/cmp-nvim-lsp-signature-help", -- signature completion
    -- snippets
    "L3MON4D3/LuaSnip", -- snippet engine
    "saadparwaiz1/cmp_luasnip", -- snippet engine
    "OurCodeBase/friendly-snippets", -- snippet collection
  },
  config = function()
    local cmp = require'cmp'
    local luasnip = require("luasnip")
    
    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<M-Up>'] = cmp.mapping.scroll_docs(-4),
        ['<M-Down>'] = cmp.mapping.scroll_docs(4),
        ['<M-Space>'] = cmp.mapping.complete(),
        ['<M-c>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if luasnip.jumpable(1) then luasnip.jump(1)
          else fallback()
          end
        end, { "i", "s" }),
        ["<M-Left>"] = cmp.mapping(function(fallback)
          if luasnip.jumpable(-1) then luasnip.jump(-1)
          else fallback()
          end
        end, { "i", "s" }),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'nvim_lsp_signature_help' },
      }),
    })
    
    cmp.setup.cmdline({ '/', '?' }, {
      mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
        ['<Down>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
      },
      sources = {
        { name = 'buffer' }
      }
    })
    
    cmp.setup.cmdline(':', {
      mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
        ['<Down>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
      },
      sources = cmp.config.sources({
        { name = 'path' },
        { name = 'cmdline' },
      }),
      matching = { disallow_symbol_nonprefix_matching = true }
    })
    
    -- expand javascript react snippets for javascript.
    luasnip.filetype_extend( "javascript", { "html" })
    luasnip.filetype_extend( "javascript", { "javascriptreact" })
    luasnip.filetype_extend( "html", { "javascript" })
    luasnip.filetype_extend( "html", { "css" })
    -- this loads friendly-snippets as lazy-load.
    require('luasnip.loaders.from_vscode').lazy_load()
  end
}
