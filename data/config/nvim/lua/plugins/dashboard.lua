---@type LazySpec
return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    dashboard = {
      width = 46,
      preset = {
        header = table.concat({
          " █████╗ ███████╗████████╗██████╗  ██████╗",
          "██╔══██╗██╔════╝╚══██╔══╝██╔══██╗██╔═══██╗",
          "███████║███████╗   ██║   ██████╔╝██║   ██║",
          "██╔══██║╚════██║   ██║   ██╔══██╗██║   ██║",
          "██║  ██║███████║   ██║   ██║  ██║╚██████╔╝",
          "╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝",
          "███╗   ██╗██╗   ██╗██╗███╗   ███╗",
          "████╗  ██║██║   ██║██║████╗ ████║",
          "██╔██╗ ██║██║   ██║██║██╔████╔██║",
          "██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
          "██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
          "╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
        }, "\n"),
        -- keys = {
        --   {
        --     key = "h",
        --     action = function() vim.notify "Hello World!" end,
        --     desc = "Say Hi",
        --   },
        -- },
      },
      -- sections = {
      --   { section = "header", padding = 4 },
      --   {
      --     section = "keys",
      --     indent = 0,
      --     padding = 3,
      --     gap = 1,
      --   },
      --   -- { section = "recent_files", icon = " ", title = "Recent Files", indent = 3, padding = 2 },
      --   { section = "startup" },
      -- },
    },
  },
}
