---@type LazySpec
return {
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      formatting = {
        filter = function(client)
          if vim.tbl_contains({ "javascript", "typescript" }, vim.bo.filetype) then return client.name == "null-ls" end
          return true
        end,
      },
    },
  },
}
