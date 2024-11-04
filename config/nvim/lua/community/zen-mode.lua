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
            ["<Leader>z"] = {
              "<Cmd>ZenMode<CR>",
              desc = "Zen Mode",
            },
          },
        },
      },
    },
  },
}
