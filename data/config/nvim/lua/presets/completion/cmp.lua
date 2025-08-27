---@type LazySpec
return {
  { import = "astrocommunity.completion.nvim-cmp" },
  { import = "astrocommunity.completion.cmp-cmdline" },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "echasnovski/mini.icons",
    },
  },
  {
    "yetone/avante.nvim",
    optional = true,
    specs = {
      {
        "Kaiser-Yang/blink-cmp-avante",
        enabled = false,
      },
    },
  },
}
