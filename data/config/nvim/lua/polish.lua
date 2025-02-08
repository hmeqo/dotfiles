local pack_util = require "utils.pack"

-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }

vim.filetype.add {
  extension = {
    ["code-workspace"] = "jsonc",
    ["json"] = "jsonc",
    ["rasi"] = "rasi",
    ["dae"] = "conf",
  },
}

pack_util.load_user_pack "polish"
