local builtin = require('telescope.builtin')
require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { 
      ".git" 
    },
		vimgrep_arguments = {
			"rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			--"--smart-case", -- Disables ignore case if any are Upper letter
			"--ignore-case"
		}
  }
}
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>lf', function() 
   require("telescope.builtin").lsp_document_symbols({symbols={"method","function"}, symbol_width=200}) 
end, { desc = 'Telescope list functions' })

local cmp = require('cmp') 

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<C-l>'] = cmp.mapping.confirm({ select = true }),
	}),
})
