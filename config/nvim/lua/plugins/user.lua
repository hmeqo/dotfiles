-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- Theme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- Motion
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
      { "S",     mode = { "n", "o", "x" }, function() require("flash").treesitter() end,        desc = "Flash treesitter" },
      { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote flash" },
      { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter search" },
      { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle flash search" },
    },
  },
  {
    "chrisgrieser/nvim-spider",
    event = "BufEnter",
    keys = {
      { ",w", function() require("spider").motion "w" end, mode = { "n", "o", "x" }, desc = "CamelCase motion w" },
      { ",e", function() require("spider").motion "e" end, mode = { "n", "o", "x" }, desc = "CamelCase motion e" },
      { ",b", function() require("spider").motion "b" end, mode = { "n", "o", "x" }, desc = "CamelCase motion b" },
    },
  },

  {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      -- Initialize mini.align
      require("mini.align").setup()
    end,
  },

  -- Codeium
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      -- vim.keymap.set("i", "<M-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true, silent = true })
      vim.keymap.set("i", "<M-i>", function() return vim.fn["codeium#Accept"]() end, { expr = true, silent = true })
    end,
    enabled = true,
  },
}
