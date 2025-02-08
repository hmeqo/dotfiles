---@type LazySpec
return {
  "ellisonleao/dotenv.nvim",
  config = function()
    require("dotenv").setup {
      verbose = false,
    }
    vim.cmd { cmd = "Dotenv", args = { vim.fn.stdpath "config" .. "/.env" } }
    vim.cmd { cmd = "Dotenv", args = { vim.fn.stdpath "config" .. "/user-config/.env" } }
  end,
}
