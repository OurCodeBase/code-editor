return {
  "OurCodeBase/nvim-tree.lua",
  cmd = "NvimTreeFindFile",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local explorer = require("nvim-tree")
    local function explorer_attach(bufnr)
      local api = require("nvim-tree.api")
      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end
      vim.keymap.set('n', '<CR>', api.node.open.tab, opts('New Tab'))
      vim.keymap.set('n', '<Right>', api.node.open.edit, opts('Open Folder'))
      vim.keymap.set('n', '<Left>', api.node.navigate.parent_close, opts('Close Folder'))
      vim.keymap.set('n', 'q', api.tree.close, opts('Close Folder'))
      vim.keymap.set('n', '<C-n>', api.fs.create, opts('Create File'))
      vim.keymap.set('n', '<C-x>', api.fs.cut, opts('Cut File'))
      vim.keymap.set('n', '<C-c>', api.fs.copy.node, opts('Copy File'))
      vim.keymap.set('n', '<C-v>', api.fs.paste, opts('Paste File'))
      vim.keymap.set('n', '<C-d>', api.fs.remove, opts('Delete File'))
      vim.keymap.set('n', '<C-o>', api.node.open.tab, opts('Open File'))
    end
    explorer.setup({
      on_attach = explorer_attach,
      disable_netrw = true,
      hijack_netrw = true,
      diagnostics = {
        enable = false,
        show_on_dirs = false,
      },
      view = {
        width = 25,
      },
      renderer = {
        indent_markers = { enable = true },
      },
      actions = {
        open_file = {
          quit_on_open = false,
          window_picker = { enable = true },
        },
      },
      filters = {
        custom = { ".DS_Store", "/node_modules/", ".git" },
      },
    })
  end
}
