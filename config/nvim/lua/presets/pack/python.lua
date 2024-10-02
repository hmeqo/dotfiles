local plugin_util = require "utils.plugin"

---@type LazySpec
return {
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      ---@diagnostic disable: missing-fields
      config = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                -- jedi = { environment = ".venv" },
                autopep8 = { enabled = false },
                yapf = { enabled = false },
                flake8 = { enabled = false },
                pylint = { enabled = false },
                pyflakes = { enabled = false },
                pycodestyle = { enabled = false },
              },
            },
          },
        },
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "pylsp",
        "ruff",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "python",
      },
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    cmd = { "VenvSelect" },
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-dap-python", --optional
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
      {
        "AstroNvim/astrocore",
        opts = {
          autocmds = {
            venv_selector_mappings = plugin_util.auto_map_lsp {
              lsp_name = "pylsp",
              desc = "Load VirtualEnv",
              mappings = {
                n = {
                  ["<Leader>lv"] = { "<Cmd>VenvSelect<CR>", desc = "Select VirtualEnv" },
                },
              },
            },
          },
        },
      },
    },
    branch = "regexp", -- This is the regexp branch, use this for the new version
    config = function() require("venv-selector").setup() end,
  },
}
