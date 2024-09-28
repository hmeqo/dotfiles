local fnUtil = require "core.utils.func"

if fnUtil.userPackExists "community" then
  ---@type LazySpec
  return { import = "user.community" }
end

return {}
