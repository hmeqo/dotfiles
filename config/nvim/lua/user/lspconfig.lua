local env = require "user.env"
local util = require "lspconfig.util"

local M = {}

M.get_typescript_server_path = function(root_dir)
  -- use $HOME env by lua
  local global_ts = env.XDG_DATA_HOME .. "/nvim/mason/packages/typescript-language-server/node_modules/typescript/lib"
  local found_ts = ""
  local function check_dir(path)
    found_ts = util.path.join(path, "node_modules", "typescript", "lib")
    if util.path.exists(found_ts) then return path end
  end
  if util.search_ancestors(root_dir, check_dir) then
    return found_ts
  else
    return global_ts
  end
end

M.get_vue_ts_plugin_path = function()
  return env.XDG_DATA_HOME .. "/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server"
end

return M
