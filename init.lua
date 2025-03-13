require('config')

local Plug = vim.fn['plug#']

-- https://github.com/junegunn/vim-plug
vim.call('plug#begin')

-- https://github.com/navarasu/onedark.nvim
Plug 'navarasu/onedark.nvim'

Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-nvim-lsp'

Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope.nvim'

Plug 'Decodetalkers/csharpls-extended-lsp.nvim'

Plug 'tikhomirov/vim-glsl'

vim.call('plug#end')

-- vim.cmd('colorscheme catppuccin-macchiato') 
require('onedark').setup {
    style = 'warm'
}
require('onedark').load()

require('plugins')

require('lsp')
