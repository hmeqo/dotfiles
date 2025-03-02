---@type LazySpec
return {
  { import = "astrocommunity.pack.vue" },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      formatting = {
        disabled = {
          "volar",
        },
      },
      servers = {
        vtsls = {
          settings = {
            autoUseWorkspaceTsdk = false,
          },
        },
      },
    },
  },
}
