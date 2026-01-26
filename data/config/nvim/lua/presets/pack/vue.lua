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
        volar = {
          settings = {
            vue = {
              -- suggest = {
              --   componentNameCasing = "alwaysPascalCase",
              --   propNameCasing = "alwaysKebabCase",
              -- },
              -- inlayHints = {
              --   destructuredProps = true,
              --   inlineHandlerLeading = true,
              --   missingProps = true,
              --   optionsWrapper = true,
              --   vBindShorthand = true,
              -- },
            },
          },
        },

        vtsls = {
          settings = {
            autoUseWorkspaceTsdk = true,
            -- tsserver = { enableTracing = false },
            -- inlayHints = {
            --   functionLikeReturnTypes = { enabled = true },
            --   variableTypes = { enabled = true },
            --   parameterTypes = { enabled = true },
            --   propertyDeclarationTypes = { enabled = true },
            --   enumMemberValues = { enabled = true },
            --   parameterNames = { enabled = "none" },
            -- },
          },
        },
      },
    },
  },
}
