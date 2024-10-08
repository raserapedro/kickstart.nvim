vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = '[P]roject [V]iewer' })
vim.keymap.set('n', '<leader>U', vim.cmd.UndotreeToggle, { desc = '[U]ndotree Toggle' })
vim.keymap.set('n', '<leader>cf', '<cmd>let @+=expand("%")<CR>', { desc = '[C]opy [F]ilepath' })
