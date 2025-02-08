local plugin_util = require "utils.plugin"

local prefix = "<Leader>v"

---@type LazySpec
return {
  -- { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.markdown-and-latex.markview-nvim" },
  {
    "OXY2DEV/markview.nvim",
    -- ft = { "markdown", "quarto", "rmd" },
    dependencies = {
      { "AstroNvim/astroui", opts = { icons = { Markview = "" } } },
      {
        "AstroNvim/astrocore",
        ---@type AstroCoreOpts
        opts = {
          autocmds = {
            markview_mappings = plugin_util.auto_map_filetype {
              ft = { "markdown", "quarto", "rmd" },
              desc = "Markview",
              mappings = {
                n = {
                  [prefix] = {
                    desc = function() return require("astroui").get_icon("Markview", 1, true) .. "Markview" end,
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
                    "<Cmd>Markview hybridToggle<CR>v<Esc>",
                    desc = "Toogle hybrid mode",
                  },
                },
              },
            },
            markview_callbacks = plugin_util.buf_enter_leave {
              ft = { "markdown", "quarto", "rmd" },
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
      opts = {
        -- modes = { "n", "no", "c" },
        -- hybrid_modes = { "n" },
      },
    },
  },
}
