---@type LazySpec
return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    -- Initialize mini.align
    require("mini.align").setup()
  end,
}
