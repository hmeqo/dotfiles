return {
  -- Flash
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
      { "S",     mode = { "n", "o", "x" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
      { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
    enabled = true,
  },

  -- Theme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    enabled = false,
  },

  -- Codeium
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      -- vim.keymap.set("i", "<M-x>", function()
      -- 	return vim.fn["codeium#Clear"]()
      -- end, { expr = true, silent = true })
      vim.keymap.set("i", "<M-y>", function() return vim.fn["codeium#Accept"]() end, { expr = true, silent = true })
    end,
  },
}
