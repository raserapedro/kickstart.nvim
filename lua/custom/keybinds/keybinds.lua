return {
  -- Files
  vim.keymap.set('n', '<leader>-', '<CMD>Oil<CR>', { desc = 'File Explorer' }),
  -- Plugins
  vim.keymap.set('n', '<leader>pl', '<CMD>Lazy<CR>', { desc = '[P]lugins [L]azy' }),
  -- Buffers
  vim.keymap.set('n', '<leader>bv', '<CMD>vsplit<CR>', { desc = '[B]uffers [V]ertical split' }),
  vim.keymap.set('n', '<leader>bh', '<CMD>split<CR>', { desc = '[B]uffers [H]orizontal split' }),
  vim.keymap.set('n', '<leader>rn', '<CMD>set rnu!<CR>', { desc = 'Toggle [R]elative [N]umbers' }),
  vim.keymap.set('n', '<leader>bcp', "<CMD>let @+ = expand('%')<CR>", { desc = '[B]uffers: [C]opy Relative [P]ath' }),
  vim.keymap.set('n', '<leader>bb', '<C-^>', { desc = '[B]uffers: Previous buffer' }),
}
