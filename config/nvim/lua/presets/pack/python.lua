local plugin_util = require "utils.plugin"

local function get_py_path()
  if vim.fn.filereadable ".venv/bin/python" then return ".venv/bin/python" end
  if vim.fn.filereadable "server/.venv/bin/python" then return ".venv/bin/python" end
  return vim.g.python3_host_prog
end

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
                -- formatter options
                autopep8 = { enabled = false },
                black = { enabled = false },
                yapf = { enabled = false },
                -- linter options
                pylint = { enabled = false, executable = "pylint" },
                ruff = { enabled = false },
                pyflakes = { enabled = false },
                pycodestyle = { enabled = false },
                -- type checker
                pylsp_mypy = {
                  enabled = true,
                  overrides = { "--python-executable", get_py_path(), true },
                  report_progress = true,
                  live_mode = true,
                  executable = "mypy",
                },
                -- auto-completion options
                jedi_completion = { fuzzy = true },
                -- import sorting
                isort = { enabled = false },
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
              lsp_name = "ruff",
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
