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
    -- lsp keybinds
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        -- see :help vim.lsp.*
        local opts = { buffer = ev.buf, silent = true }
        -- see :help vim.lsp.buf
        opts.desc = "Show LSP definitions"
        keymap.set("n", "<CR>", vim.lsp.buf.definition, opts)
        opts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "<CR>", vim.lsp.buf.hover, opts)
      end,
    })
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
