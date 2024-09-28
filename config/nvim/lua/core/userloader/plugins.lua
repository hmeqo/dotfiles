local fnUtil = require "core.utils.func"

if fnUtil.userPackExists "plugins" then
  ---@type LazySpec
  return { import = "user.plugins" }
end

return {}
