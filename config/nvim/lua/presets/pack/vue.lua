---@type LazySpec
return {
  { import = "astrocommunity.pack.vue" },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      formatting = {
        disabled = {
          "volar",
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      formatting = {
        filter = function(client)
          if vim.bo.filetype == "json" or vim.bo.filetype == "jsonc" then return client.name ~= "prettierd" end
          return true
        end,
      },
    },
  },
}
