local plugin_util = require "utils.plugin"

local prefix = "<Leader>v"

local ft = { "markdown", "quarto", "rmd", "Avante", "codecompanion" }

---@type LazySpec
return {
  { import = "astrocommunity.markdown-and-latex.markview-nvim" },
  {
    "OXY2DEV/markview.nvim",
    -- ft = ft,
    dependencies = {
      {
        "AstroNvim/astrocore",
        ---@type AstroCoreOpts
        opts = {
          autocmds = {
            markview_mappings = plugin_util.auto_map_filetype {
              ft = ft,
              desc = "Markview",
              mappings = {
                n = {
                  [prefix] = {
                    desc = " Markview",
                  },
                  [prefix .. "v"] = {
                    "<Cmd>Markview toggle<CR>",
                    desc = "Toggle Markview",
                  },
                  [prefix .. "s"] = {
                    "<Cmd>Markview splitToggle<CR>",
                    desc = "Toggle split mode",
                  },
                  [prefix .. "h"] = {
                    "<Cmd>Markview hybridToggle<CR>",
                    desc = "Toogle hybrid mode",
                  },
                },
              },
            },
            markview_callbacks = plugin_util.buf_enter_leave {
              ft = ft,
              on_enter = function()
                local win = vim.api.nvim_get_current_win()
                vim.wo[win].concealcursor = "nc"
              end,
              leave_event = "BufWinLeave",
              on_leave = function()
                local win = vim.api.nvim_get_current_win()
                vim.wo[win].conceallevel = 0
                vim.wo[win].concealcursor = ""
              end,
            },
          },
        },
      },
    },
    opts = {
      -- modes = { "n", "no", "c" },
      -- hybrid_modes = { "n" },
      -- preview = {
      --   filetypes = { "markdown", "codecompanion" },
      --   ignore_buftypes = {},
      -- },
    },
  },
}
