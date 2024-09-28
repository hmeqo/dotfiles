local fnUtil = require "core.utils.func"

require "default.polish"

vim.filetype.add {
  extension = {
    ["code-workspace"] = "jsonc",
    ["json"] = "jsonc",
  },
}

fnUtil.loadUserPack "polish"
