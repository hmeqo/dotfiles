---@type LazySpec
return {
  { import = "astrocommunity.pack.xml" },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      ---@diagnostic disable: missing-fields
      config = {
        lemminx = {
          settings = {
            xml = {
              server = {
                workDir = "~/.cache/lemminx",
              },
            },
          },
        },
      },
    },
  },
}
