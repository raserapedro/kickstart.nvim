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
    --@module 'oil'
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
    'sindrets/diffview.nvim',
  },
  {
    'yetone/avante.nvim',
    event = 'VeryLazy',
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      -- add any opts here
      ---@alias Provider "claude" | "openai" | "azure" | "gemini" | "cohere" | "copilot" | string
      provider = 'claude', -- Recommend using Claude
      auto_suggestions_provider = 'claude', -- Since auto-suggestions are a high-frequency operation and therefore expensive, it is recommended to specify an inexpensive provider or even a free provider: copilot
      claude = {
        endpoint = 'https://api.anthropic.com',
        model = 'claude-3-5-haiku-latest',
        temperature = 0,
        max_tokens = 4096,
      },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = 'make',
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      'stevearc/dressing.nvim',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      --- The below dependencies are optional,
      'hrsh7th/nvim-cmp', -- autocompletion for avante commands and mentions
      'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
      'zbirenbaum/copilot.lua', -- for providers='copilot'
      {
        -- support for image pasting
        'HakonHarnes/img-clip.nvim',
        event = 'VeryLazy',
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { 'markdown', 'Avante' },
        },
        ft = { 'markdown', 'Avante' },
      },
    },
  },
  {
    'github/copilot.vim',
  },
}
