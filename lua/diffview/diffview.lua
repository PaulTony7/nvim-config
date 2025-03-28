vim.keymap.set('n', '<leader>h', ':DiffviewFileHistory<CR>', {desc = 'Open Git History' })
vim.keymap.set('n', '<leader>gg', ':DiffviewOpen<CR>', { noremap = true, silent = true, desc = 'Close DiffView' })
vim.keymap.set('n', '<leader>gc', ':DiffviewClose<CR>', { noremap = true, silent = true, desc = 'Open DiffView' })
