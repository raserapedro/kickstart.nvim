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
  -- {
  --   'dgagn/diagflow.nvim',
  --   event = 'LspAttach',
  --   opts = {
  --     show_sign = true,
  --     show_borders = true,
  --     scope = 'line',
  --     toggle_event = { 'InsertEnter' },
  --   },
  -- },
  {
    'pwntester/octo.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim', 'nvim-tree/nvim-web-devicons' },
  },
  {
    'frankroeder/parrot.nvim',
    dependencies = { 'ibhagwan/fzf-lua', 'nvim-lua/plenary.nvim' },
    -- optionally include "rcarriga/nvim-notify" for beautiful notifications
    config = function()
      require('parrot').setup {
        -- Providers must be explicitly added to make them available.
        providers = {
          anthropic = {
            api_key = os.getenv 'ANTHROPIC_API_KEY',
          },
          -- gemini = {
          --   api_key = os.getenv 'GEMINI_API_KEY',
          -- },
          -- groq = {
          --   api_key = os.getenv 'GROQ_API_KEY',
          -- },
          -- mistral = {
          --   api_key = os.getenv 'MISTRAL_API_KEY',
          -- },
          -- pplx = {
          --   api_key = os.getenv 'PERPLEXITY_API_KEY',
          -- },
          -- provide an empty list to make provider available (no API key required)
          -- ollama = {},
          -- openai = {
          --   api_key = os.getenv 'OPENAI_API_KEY',
          -- },
          -- github = {
          --   api_key = os.getenv 'GITHUB_TOKEN',
          -- },
          -- nvidia = {
          --   api_key = os.getenv 'NVIDIA_API_KEY',
          -- },
          -- xai = {
          --   api_key = os.getenv 'XAI_API_KEY',
          -- },
        },
      }
    end,
  },
  {
    'sindrets/diffview.nvim',
  },
}
