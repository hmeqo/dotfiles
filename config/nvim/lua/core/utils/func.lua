local M = {}

M.packExists = function(path)
  local ok, _ = pcall(require, path)
  return ok
end

M.userPackExists = function(path) return M.packExists("user." .. path) end

M.loadUserPack = function(path)
  if M.userPackExists(path) then require("user." .. path) end
end

return M
