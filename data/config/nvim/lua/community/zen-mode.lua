---@type LazySpec
return {
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  {
    "folke/zen-mode.nvim",
    dependencies = {
      "AstroNvim/astrocore",
      ---@type AstroCoreOpts
      opts = {
        mappings = {
          n = {
            ["<Leader>bz"] = {
              "<Cmd>ZenMode<CR>",
              desc = "Zen Mode",
            },
          },
        },
      },
    },
  },
}
