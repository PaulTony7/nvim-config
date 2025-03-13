vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Indents
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.clipboard = 'unnamedplus'

vim.wo.number = true
vim.wo.relativenumber = true
vim.o.scrolloff = 8

vim.o.wrap = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cursorline = true

--Theme options
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = 'yes'

--Status Line
vim.o.statusline = "%f%m%r %=%14.(%l,%c%V%)"

-- File Browsing
vim.g.netrw_banner = false
vim.g.netrw_winsize = 20
vim.g.netrw_altv = 1
vim.g.netrw_liststyle = 3
vim.keymap.set("n", "<leader>e", ":Lexplore!<CR>", { noremap = true, silent = true, desc = "Open Netrw Explorer" })

vim.keymap.set('n', "<C-l>", vim.cmd.noh)
