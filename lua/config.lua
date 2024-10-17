vim.opt.tabstop = 2

vim.opt.signcolumn = 'yes'
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.clipboard = 'unnamedplus'
vim.wo.number = true
vim.wo.relativenumber = true

vim.keymap.set('n', "<C-b>", vim.cmd.Lexplore)
vim.keymap.set('n', "<C-l>", vim.cmd.noh)
