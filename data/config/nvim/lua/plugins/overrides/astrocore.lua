---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    filetypes = {
      extension = {
        ["code-workspace"] = "jsonc",
        ["json"] = "jsonc",
        ["rasi"] = "rasi",
        ["dae"] = "conf",
      },
    },
    sessions = {
      -- Configure auto saving
      autosave = {
        -- last = false, -- auto save last session
        cwd = true, -- auto save session for each working directory
      },
      -- Patterns to ignore when saving sessions
      -- ignore = {
      --   dirs = {}, -- working directories to ignore sessions in
      --   filetypes = { "gitcommit", "gitrebase" }, -- filetypes to ignore sessions
      --   buftypes = {}, -- buffer types to ignore sessions
      -- },
    },
    mappings = {
      n = {
        -- navigate buffer tabs
        ["H"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        ["L"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },

        ["<F2>"] = { function() vim.lsp.buf.rename() end, desc = "LSP rename" },
        ["gr"] = { function() vim.lsp.buf.references() end, desc = "LSP search references" },
      },
    },
  },
}
