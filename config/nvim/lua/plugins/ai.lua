---@type LazySpec
return {
  -- Codeium
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup {}
      -- vim.keymap.set("i", "<M-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true, silent = true })
      vim.keymap.set("i", "<M-i>", function() return vim.fn["codeium#Accept"]() end, { expr = true, silent = true })
    end,
    enabled = false,
  },
}
