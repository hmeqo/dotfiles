---@type LazySpec
return {
  "Exafunction/codeium.vim",
  event = "BufEnter",
  cmd = {
    "Codeium",
    "CodeiumEnable",
    "CodeiumDisable",
    "CodeiumToggle",
    "CodeiumAuto",
    "CodeiumManual",
  },
  dependencies = {
    -- "nvim-lua/plenary.nvim",
    -- "hrsh7th/nvim-cmp",
    {
      "AstroNvim/astrocore",
      ---@type AstroCoreOpts
      opts = {
        mappings = {
          n = {
            ["<Leader>;"] = {
              "<Cmd>CodeiumToggle<CR>",
              noremap = true,
              desc = "Toggle Codeium active",
            },
          },
          i = {
            -- ["<M-x>"] = {
            --   function() return vim.fn["codeium#Clear"]() end,
            --   expr = true,
            -- },
            ["<M-/>"] = {
              function() return vim.fn["codeium#Accept"]() end,
              expr = true,
            },
          },
        },
      },
    },
  },
}
