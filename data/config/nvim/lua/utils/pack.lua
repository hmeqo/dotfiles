local M = {}

M.userDir = vim.fn.stdpath "config" .. "/lua/user"

M.pack_exists = function(path) return (vim.fn.filereadable(path .. ".lua") or pcall(require, path)[1]) == 1 end

M.user_pack_exists = function(path)
  local packPath = M.userDir .. "/" .. path
  return M.pack_exists(packPath)
end

M.user_pack_importable = function(path)
  local packPath = M.userDir .. "/" .. path
  return M.pack_exists(packPath) or vim.fn.isdirectory(packPath) == 1
end

M.load_user_pack = function(path)
  if M.user_pack_exists(path) then return require("user." .. path) end
end

M.import_user_pack = function(path)
  if M.user_pack_importable(path) then return { import = "user." .. path } end
end

return M
