---@type LazySpec
return {
  {
    "nvim-ufo",
    enabled = function()
      local version = vim.version()
      return version.major > 0 or (version.major == 0 and version.minor >= 11)
    end,
  },
}
