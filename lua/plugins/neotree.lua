require('neo-tree').setup({
  window = {
    position = 'right',
    mappings = {
      ['e'] = function() 
        vim.api.nvim_exec('Neotree focus filesystem right', true)
      end,
      ['b'] = function() 
        vim.api.nvim_exec('Neotree focus buffers right', true) 
      end,
      ['g'] = function() 
        vim.api.nvim_exec('Neotree focus git_status right', true) 
      end,
    },
  },
  filesystem = {
    hijack_netrw_behavior = "open_current",
  },
  event_handlers = {
    {
      event = "file_open_requested",
      handler = function()
        require("neo-tree.command").execute({action = "close"})
        --vim.cmd("Neotree close")
      end,
    },
  },
})

vim.keymap.set('n', '<leader>e', ':Neotree toggle right<CR>')


vim.keymap.set('n', '-', function()
  local reveal_file = vim.fn.expand('%:p')
  if (reveal_file == '') then
    reveal_file = vim.fn.getcwd()
  else
    local f = io.open(reveal_file, "r")
    if (f) then
      f.close(f)
    else
      reveal_file = vim.fn.getcwd()
    end
  end
  require('neo-tree.command').execute({
    action = "focus",          -- OPTIONAL, this is the default value
    source = "filesystem",     -- OPTIONAL, this is the default value
    position = "right",         -- OPTIONAL, this is the default value
    reveal_file = reveal_file, -- path to file or folder to reveal
    reveal_force_cwd = true,   -- change cwd without asking if needed
  })
  end,
  { desc = "Open neo-tree at current file or working directory" }
);

