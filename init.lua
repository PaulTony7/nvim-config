require('config')

local Plug = vim.fn['plug#']

-- https://github.com/junegunn/vim-plug
vim.call('plug#begin')

-- https://github.com/navarasu/onedark.nvim
Plug 'navarasu/onedark.nvim'

Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-nvim-lsp'

vim.call('plug#end')

require('onedark').setup {
    style = 'cool'
}
require('onedark').load()

require('csbind').setup()

require('lsp')
