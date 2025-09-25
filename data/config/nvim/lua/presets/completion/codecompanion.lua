local prefix = "<Leader>i"

local desc = " CodeCompanion"

local defaultAdapter = "openrouter"

---@type LazySpec
return {
  {
    "olimorris/codecompanion.nvim",
    opts = {
      display = {
        chat = {
          window = {
            -- width = 0.3,
            width = 50,
          },
        },
      },
      strategies = {
        chat = {
          adapter = defaultAdapter,
        },
        inline = {
          adapter = defaultAdapter,
        },
        agent = {
          adapter = defaultAdapter,
        },
      },
      adapters = {
        openrouter = function()
          return require("codecompanion.adapters").extend("openrouter", {
            schema = {
              model = {
                default = "x-ai/grok-code-fast-1",
              },
            },
          })
        end,
        deepseek = function()
          return require("codecompanion.adapters").extend("deepseek", {
            schema = {
              model = {
                default = "deepseek-chat",
              },
            },
          })
        end,
      },
    },
    init = function() require("presets.completion.codecompanion.fidget-spinner"):init() end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "j-hui/fidget.nvim",
      {
        "AstroNvim/astrocore",
        ---@type AstroCoreOpts
        opts = {
          mappings = {
            n = {
              [prefix] = {
                desc = desc,
              },
              [prefix .. "a"] = {
                "<Cmd>CodeCompanionActions<CR>",
                desc = "Actions",
              },
              [prefix .. "i"] = {
                "<Cmd>CodeCompanion<CR>",
                desc = "Inline Prompt",
              },
              [prefix .. "t"] = {
                "<Cmd>CodeCompanionChat Toggle<CR>",
                desc = "Toggle Chat",
              },
            },
            v = {
              [prefix] = {
                desc = desc,
              },
              [prefix .. "a"] = {
                "<Cmd>'<,'>CodeCompanionActions<CR>",
                desc = "Actions",
              },
              [prefix .. "i"] = {
                "<Cmd>'<,'>CodeCompanion<CR>",
                desc = "Inline Prompt",
              },
            },
          },
        },
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        ft = { "markdown", "codecompanion" },
        opts = {
          file_types = { "markdown", "codecompanion" },
        },
      },
    },
  },
}
