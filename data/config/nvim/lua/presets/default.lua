---@type LazySpec
return {
  { import = "astrocommunity.recipes.cache-colorscheme" },
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  -- { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  -- { import = "astrocommunity.bars-and-lines.dropbar-nvim" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.toml" },

  -- === align ===
  { import = "astrocommunity.syntax.vim-easy-align" },

  -- === format ===
  -- { import = "astrocommunity.editing-support.conform-nvim" },
  -- {
  --   'stevearc/conform.nvim',
  --   opts = {
  --     formatters_by_ft = {
  --       lua = { "stylua" },
  --       -- Conform will run multiple formatters sequentially
  --       python = { "isort", "black" },
  --       -- You can customize some of the format options for the filetype (:help conform.format)
  --       rust = { "rustfmt", lsp_format = "fallback" },
  --       -- Conform will run the first available formatter
  --       javascript = { "prettierd", "prettier", stop_after_first = true },
  --     },
  --   }
  -- },

  -- === JSON ===
  { import = "astrocommunity.pack.json" },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "prettierd",
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      formatting = {
        filter = function(client)
          if vim.bo.filetype == "json" or vim.bo.filetype == "jsonc" then return client.name ~= "jsonls" end
          return true
        end,
      },
    },
  },

  -- === scrollbar and minimap ===
  { import = "astrocommunity.split-and-window.mini-map" },
  { import = "astrocommunity.scrolling.nvim-scrollbar" },

  -- === suda ===
  {
    "lambdalisue/suda.vim",
    dependencies = {
      {
        "AstroNvim/astrocore",
        ---@type AstroCoreOpts
        opts = {
          mappings = {
            n = {
              ["<Leader>R"] = { "<Cmd>SudaRead<CR>", desc = "Suda Read" },
              ["<Leader>W"] = { "<Cmd>SudaWrite<CR>", desc = "Suda Write" },
            },
          },
          options = {
            g = {
              suda_smart_edit = 1,
            },
          },
        },
      },
    },
    cmd = { "SudaRead", "SudaWrite" },
  },
}
