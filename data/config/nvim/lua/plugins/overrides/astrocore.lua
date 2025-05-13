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
    mappings = {
      n = {
        -- navigate buffer tabs
        ["H"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        ["L"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },

        ["<F2>"] = { function() vim.lsp.buf.rename() end, desc = "LSP rename" },
        ["gr"] = { function() vim.lsp.buf.references() end, desc = "LSP search references" },
      },
      v = {
        -- ["u"] = "<Nop>",
        ["u"] = "<Esc>u",
        ["U"] = "<Esc>U",
      },
    },
  },
}
