require('nvim-treesitter.configs').setup {
  ensure_installed = { "xml" },
  highlitght = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- Create autocommand for filetypes
vim.api.nvim_create_augroup('filetype_custom', { clear = true })
vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
  group = 'filetype_custom',
  pattern = "*.axaml",
  command = "setfiletype xml",
})
