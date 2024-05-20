return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    -- plugins localization --
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    -- language server protocol configration --
    local keymap = vim.keymap -- for conciseness
    local opts = { noremap = true, silent = true } -- keymaps opts
    local on_attach = function(client, bufnr)
      -- see :help vim.lsp.buf
      opts.desc = "Show LSP definitions"
      keymap.set("n", "<CR>", vim.lsp.buf.definition, opts)
      opts.desc = "Show documentation for what is under cursor"
      keymap.set("n", "<CR>", vim.lsp.buf.hover, opts)
      -- Enable document highlights if the server supports it
      if client.server_capabilities.documentHighlightProvider then
        local group = vim.api.nvim_create_augroup("LSPDocumentHighlight", {})
        vim.opt.updatetime = 2000 -- cursor hold delay time
        -- we can link highlights to an existing group.
        vim.api.nvim_set_hl(0, 'LspReferenceRead', {link = 'Search'})
        vim.api.nvim_set_hl(0, 'LspReferenceText', {link = 'Search'})
        vim.api.nvim_set_hl(0, 'LspReferenceWrite', {link = 'Search'})
        -- this will highlight text when cursor hold.
        vim.api.nvim_create_autocmd("CursorHold", {
          group = group,
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.document_highlight()
          end,
        })
        -- this will clear highlight when cursor moved.
        vim.api.nvim_create_autocmd("CursorMoved", {
          group = group,
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.clear_references()
          end,
        })
      end
    end
    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()
    -- vim diagnostic settings
    local diagnostic_config = {
      virtual_text = true,
      update_in_insert = true,
      float = {
        focusable = false,
        border = "rounded",
      },
    }
    vim.diagnostic.config(diagnostic_config)
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
      border = "rounded",
    })
    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
      border = "rounded",
    })
    -- mason-lspconfig servers handler
    mason_lspconfig.setup_handlers({
      -- default handler for installed servers
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
          on_attach = on_attach,
        })
      end,
    })
    -- mason package manager --
    local servers = {
      "bashls",
      "tsserver",
      "cssls",
      "html",
      "jsonls",
      "pyright",
      "eslint",
    }
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        },
      },
    })
    mason_lspconfig.setup({
      ensure_installed = servers,
      automatic_installation = false,
    })
  end,
}
