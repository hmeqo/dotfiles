---@type LazySpec
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      filetypes = {
        extension = {
          ["code-workspace"] = "jsonc",
          ["json"] = "jsonc",
          ["rasi"] = "rasi",
          ["dae"] = "conf",
          ["env"] = "conf",
        },
      },
      options = {
        opt = {
          scrolloff = 5,
        },
      },
      mappings = {
        n = {
          -- navigate buffer tabs
          ["H"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
          ["L"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },

          -- Alias
          ["gr"] = { function() vim.lsp.buf.references() end, desc = "LSP search references" },
        },
        v = {
          -- ["u"] = "<Nop>",
          -- ["u"] = "<Esc>u",
          -- ["U"] = "<Esc>U",
        },
      },
    },
    config = function(_, opts)
      ---@type AstroCoreMappings
      local M = {
        -- Vscode-like
        ["<C-.>"] = { function() vim.lsp.buf.code_action() end, desc = "LSP code actions" },
        ["<F2>"] = { function() vim.lsp.buf.rename() end, desc = "LSP rename" },
        ["<F12>"] = { function() vim.lsp.buf.definition() end, desc = "LSP search definition" },
        ["<S-F12>"] = { function() vim.lsp.buf.references() end, desc = "LSP search references" },
        ["<M-S-f>"] = { function() vim.lsp.buf.format() end, desc = "Format buffer" },
        ["<M-S-o>"] = {
          function()
            vim.lsp.buf.code_action {
              ---@diagnostic disable-next-line: missing-fields
              context = { only = { "source.organizeImports" } },
              apply = true,
            }
          end,
          desc = "Organize imports",
        },
        ["<C-S-k>"] = { function() vim.cmd.normal "dd" end },
        ["<A-j>"] = { function() vim.cmd "m +1" end },
        ["<A-k>"] = { function() vim.cmd "m -2" end },
      }
      local M_V = vim.tbl_extend("keep", {
        ["<A-j>"] = { function() vim.cmd "m '>+1<CR>" end },
        ["<A-k>"] = { function() vim.cmd "m '<-2<CR>" end },
      }, M)

      opts.mappings.n = vim.tbl_extend("force", opts.mappings.n or {}, M)
      opts.mappings.v = vim.tbl_extend("force", opts.mappings.v or {}, M_V)
      opts.mappings.i = vim.tbl_extend("force", opts.mappings.i or {}, M)
      require("astrocore").setup(opts)
    end,
  },
}
