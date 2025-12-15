local Plug = vim.fn['plug#']

-- https://github.com/junegunn/vim-plug
vim.call('plug#begin')

-- theme
Plug 'navarasu/onedark.nvim'

-- lsp configurations
Plug 'neovim/nvim-lspconfig'
-- autocomplition
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'

-- debugging
Plug 'mfussenegger/nvim-dap'
Plug 'nvim-neotest/nvim-nio'
Plug 'rcarriga/nvim-dap-ui'

Plug 'nvim-lua/plenary.nvim'

-- Plug 'nvim-treesitter/nvim-treesitter'

Plug 'nvim-telescope/telescope.nvim'

Plug 'Decodetalkers/csharpls-extended-lsp.nvim'

Plug 'tikhomirov/vim-glsl'

Plug 'sindrets/diffview.nvim'

-- neo-tree
Plug 'MunifTanjim/nui.nvim'
Plug "nvim-tree/nvim-web-devicons"
Plug 'nvim-neo-tree/neo-tree.nvim'

-- Plug 'GustavEikaas/easy-dotnet.nvim'

vim.call('plug#end')

require('plugins/telescope')
require('plugins/diffview')
require('plugins/neotree')
require('plugins/debugging')
require('plugins/easy-dotnet')
-- require('plugins/treesitter')

require('onedark').setup {
    style = 'warm'
}
require('onedark').load()

require('lsp')
