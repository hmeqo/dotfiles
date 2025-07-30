local prefix = "<Leader>A"

---@type LazySpec
return {
  { import = "astrocommunity.completion.avante-nvim" },
  {
    "yetone/avante.nvim",
    build = "make",
    opts = {
      provider = "deepseek",
      auto_suggestions_provider = "deepseek",
      providers = {
        deepseek = {
          __inherited_from = "openai",
          api_key_name = "DEEPSEEK_API_KEY",
          endpoint = "https://api.deepseek.com",
          model = "deepseek-coder",
        },
        openrouter = {
          __inherited_from = "openai",
          endpoint = "https://openrouter.ai/api/v1",
          api_key_name = "OPENROUTER_API_KEY",
          model = "anthropic/claude-sonnet-4",
          -- model = "google/gemini-2.5-pro-preview-03-25",
          -- model = "deepseek/deepseek-chat-v3-0324",
        },
      },
    },
    dependencies = {
      --- The below dependencies are optional,
      -- "echasnovski/mini.pick", -- for file_selector provider mini.pick
      -- "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      -- "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      -- "ibhagwan/fzf-lua", -- for file_selector provider fzf
      -- "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      -- "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        -- event = "User AstroFile",
        lazy = true,
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
        "MeanderingProgrammer/render-markdown.nvim",
        optional = true,
        ft = { "markdown", "Avante" },
        opts = {
          file_types = { "markdown", "Avante" },
        },
      },
      { "AstroNvim/astrocore", opts = function(_, opts) opts.mappings.v[prefix] = opts.mappings.n[prefix] end },
    },
    specs = {
      {
        "Kaiser-Yang/blink-cmp-avante",
        enabled = false,
      },
    },
  },
}
