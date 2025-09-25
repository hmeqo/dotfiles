---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    formatting = {
      format_on_save = {
        enabled = false,
      },
      filter = function(client)
        if vim.bo.filetype == "lua" then return client.name ~= "stylua" end
        return true
      end,
    },
  },
}
