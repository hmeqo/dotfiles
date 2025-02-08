---@type LazySpec
return {
  { import = "astrocommunity.pack.json" },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "prettierd",
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      formatting = {
        filter = function(client)
          if vim.bo.filetype == "json" or vim.bo.filetype == "jsonc" then return client.name ~= "jsonls" end
          return true
        end,
      },
    },
  },
}
