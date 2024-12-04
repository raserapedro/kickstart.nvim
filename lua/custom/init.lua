require 'custom.remap'
vim.g.codeium_disable_bindings = 1

function OpenModifiedFiles()
  local modified_files = vim.fn.systemlist 'git diff --name-only'
  for _, file in ipairs(modified_files) do
    vim.cmd('edit ' .. file)
  end
end
vim.api.nvim_create_user_command('OpenModified', OpenModifiedFiles, {})
