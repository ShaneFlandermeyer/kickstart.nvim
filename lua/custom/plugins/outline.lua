-- Add the plugin repository via native package management
vim.pack.add { 'https://git.sr.ht/~hedy/outline.nvim' }

-- Global keymap to toggle the outline window
vim.keymap.set('n', '<leader>o', '<cmd>Outline<CR>', { desc = 'Toggle Outline' })

-- Initialize configuration immediately
require('outline').setup {
  on_attach = function(bufnr)
    local outline = require 'outline'
    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Buffer-local mapping inside the outline window to close/toggle it
    -- Fixed: explicitly passing the .toggle function
    map('n', '<leader>o', outline.toggle, { desc = 'Toggle Outline' })
  end,
}
