vim.keymap.set('n', '<leader>--', '<cmd>Oil<CR>', { desc = 'File Explorer (Oil)' })
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = '[U]ndotree Toggle' })
vim.keymap.set('n', '<leader>cf', '<cmd>let @*=expand("%")<CR>', { desc = '[C]opy [F]ilepath' })
vim.keymap.set(
  'n',
  '<leader>gb',
  '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
  { silent = true, desc = '[G]itlinker: Open in [B]rowser' }
)
vim.keymap.set(
  'v',
  '<leader>gb',
  '<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".open_in_browser})<cr>',
  { desc = '[G]itlinker: Open in [B]rowser' }
)
vim.keymap.set(
  'n',
  '<leader>gy',
  '<cmd>lua require"gitlinker".get_buf_range_url("n", {action_callback = require"gitlinker.actions".copy_to_clipboard})<cr>',
  { silent = true, desc = '[G]itlinker: Copy to clipboard' }
)
vim.keymap.set(
  'v',
  '<leader>gy',
  '<cmd>lua require"gitlinker".get_buf_range_url("v", {action_callback = require"gitlinker.actions".copy_to_clipboard})<cr>',
  { desc = '[G]itlinker: Copy to clipboard' }
)
vim.keymap.set('n', '<leader>tt', function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { silent = true, noremap = true, desc = '[T]oggle LSP Virtual [T]ext' })
