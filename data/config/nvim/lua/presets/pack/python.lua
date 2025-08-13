---@type LazySpec
return {
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.python-ruff" },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      ---@diagnostic disable: missing-fields
      config = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "basic",
                autoImportCompletions = true,
                diagnosticSeverityOverrides = {
                  reportUnusedImport = "information",
                  reportUnusedFunction = "information",
                  reportUnusedVariable = "information",
                  -- reportGeneralTypeIssues = "none",
                  -- reportOptionalMemberAccess = "none",
                  -- reportOptionalSubscript = "none",
                  -- reportPrivateImportUsage = "none",
                },
              },
            },
          },
        },
      },
    },
  },
}
