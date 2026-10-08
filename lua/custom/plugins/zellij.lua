vim.pack.add {
  'https://github.com/swaits/zellij-nav.nvim',
}

require('zellij-nav').setup({})

vim.keymap.set('n', '<C-h>', '<cmd>ZellijNavigateLeftTab<cr>', {
  silent = true,
  desc = 'navigate left or tab',
})

vim.keymap.set('n', '<C-j>', '<cmd>ZellijNavigateDown<cr>', {
  silent = true,
  desc = 'navigate down',
})

vim.keymap.set('n', '<C-k>', '<cmd>ZellijNavigateUp<cr>', {
  silent = true,
  desc = 'navigate up',
})

vim.keymap.set('n', '<C-l>', '<cmd>ZellijNavigateRightTab<cr>', {
  silent = true,
  desc = 'navigate right or tab',
})

vim.api.nvim_create_autocmd('VimLeave', {
  pattern = '*',
  command = 'silent !zellij action switch-mode normal',
})
