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
}
