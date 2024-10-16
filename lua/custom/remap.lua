vim.keymap.set('n', '<leader>fe', '<cmd>Oil<CR>', { desc = '[F]ile [E]xplorer' })
vim.keymap.set('n', '<leader>U', vim.cmd.UndotreeToggle, { desc = '[U]ndotree Toggle' })
vim.keymap.set('n', '<leader>cf', '<cmd>let @+=expand("%")<CR>', { desc = '[C]opy [F]ilepath' })
