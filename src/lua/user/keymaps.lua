-- normal mode function.
function nmap(shortcut, command)
  vim.api.nvim_set_keymap('n', shortcut, command, { noremap = true, silent = true })
end

-- insert mode function.
function imap(shortcut, command)
  vim.api.nvim_set_keymap('i', shortcut, command, { noremap = true, silent = true })
end

-- pre defined vscode key shortcuts.
nmap("f","zc")
nmap("<C-f>","zM")
nmap("<C-j>","zR")
nmap("<M-e>","<Esc>:NvimTreeFindFile<CR>")
nmap("<M-r>","<Esc>:RunCode<CR>")
nmap("<C-q>","<Esc>:q!<CR>")
nmap("<M-q>","<Esc>:qall!<CR>")
nmap("<C-t>","<Esc>:split +terminal<CR>")
imap("<C-q>","<Esc>:wq<CR>i")
imap("<C-s>","<Esc>:w<CR>i")
imap("<C-d>","<Esc>:t.<CR>i")
imap("<C-u>","<Esc>:undo<CR>i")
imap("<C-r>","<Esc>:redo<CR>i")
imap("<C-Up>","<Esc>:m-2<CR>gi")
imap("<C-Down>","<Esc>:m+<CR>gi")
imap("<C-c>","<Esc>yyi")
imap("<C-v>","<Esc>pi")

vim.api.nvim_set_keymap('v', "<BS>", "d", { noremap = true, silent = true })
