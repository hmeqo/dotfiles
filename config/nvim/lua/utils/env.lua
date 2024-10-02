local M = {}

M.HOME = os.getenv "HOME"
M.XDG_DATA_HOME = os.getenv "XDG_DATA_HOME" or (M.HOME .. "/.local/share")

return M
