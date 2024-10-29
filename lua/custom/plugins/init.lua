-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- 'Exafunction/codeium.vim',
  'mbbill/undotree',
  'nvim-treesitter/nvim-treesitter-context',
  'ray-x/lsp_signature.nvim',
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  },
  'ruifm/gitlinker.nvim',
  'sQVe/sort.nvim',
  {
    'dgagn/diagflow.nvim',
    event = 'LspAttach',
    opts = {
      show_sign = true,
      show_borders = true,
      scope = 'line',
    },
  },
}
