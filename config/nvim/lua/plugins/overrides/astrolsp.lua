---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    formatting = {
      format_on_save = {
        enabled = false,
      },
      disabled = {
        "volar",
      },
      filter = function(client)
        if vim.bo.filetype == "jsonc" then return client.name == "jsonls" end
        return true
      end,
    },
  },
}
