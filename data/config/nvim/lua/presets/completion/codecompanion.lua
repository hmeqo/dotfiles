local prefix = "<Leader>i"

local adapter = "deepseek"

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
          adapter = adapter,
        },
        inline = {
          adapter = adapter,
        },
        agent = {
          adapter = adapter,
        },
      },
      adapters = {
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
      { "AstroNvim/astroui", opts = { icons = { CodeCompanion = "" } } },
      {
        "AstroNvim/astrocore",
        ---@type AstroCoreOpts
        opts = {
          mappings = {
            n = {
              [prefix] = {
                desc = function() return require("astroui").get_icon("CodeCompanion", 1, true) .. "CodeCompanion" end,
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
                desc = function() return require("astroui").get_icon("CodeCompanion", 1, true) .. "CodeCompanion" end,
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
        opts = {
          file_types = { "markdown", "codecompanion" },
        },
        ft = { "markdown", "codecompanion" },
      },
    },
  },
}
