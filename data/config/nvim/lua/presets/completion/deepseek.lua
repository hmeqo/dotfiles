---@type LazySpec
return {
  { import = "astrocommunity.completion.avante-nvim" },
  {
    "yetone/avante.nvim",
    opts = {
      provider = "deepseek",
      auto_suggestions_provider = "deepseek",
      vendors = {
        deepseek = {
          __inherited_from = "openai",
          api_key_name = "DEEPSEEK_API_KEY",
          endpoint = "https://api.deepseek.com",
          model = "deepseek-coder",
        },
      },
    },
  },
}
