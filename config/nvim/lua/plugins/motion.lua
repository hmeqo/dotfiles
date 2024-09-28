---@type LazySpec
return {
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
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
}
