---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    sessions = {
      -- Configure auto saving
      autosave = {
        last = false, -- auto save last session
        cwd = true, -- auto save session for each working directory
      },
      -- Patterns to ignore when saving sessions
      -- ignore = {
      --   dirs = {}, -- working directories to ignore sessions in
      --   filetypes = { "gitcommit", "gitrebase" }, -- filetypes to ignore sessions
      --   buftypes = {}, -- buffer types to ignore sessions
      -- },
    },
    autocmds = {
      sessions_autosave = {
        -- auto save sessions
        {
          event = "QuitPre",
          desc = "Save sessions on close",
          callback = function()
            if require("astrocore.buffer").is_valid_session() then
              if vim.fn.exists ":Neotree" == 2 then vim.cmd "Neotree close" end

              local resession = require "resession"
              local session_info = resession.get_current_session_info()
              if session_info then resession.save(session_info.name, { dir = session_info.dir, notify = false }) end
            end
          end,
        },
      },
    },
  },
}
