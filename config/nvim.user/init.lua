local plugins_enabled = require "user.plugins-enabled"

if vim.g.neovide then
  if os.getenv "XDG_SESSION_TYPE" == "wayland" then
    vim.o.guifont = "FiraCode Nerd Font:h12"
  else
    vim.o.guifont = "FiraCode Nerd Font:h8"
  end

  vim.g.neovide_transparency = 0.95
  vim.g.neovide_hide_mouse_when_typing = true
  -- vim.g.neovide_no_idle = true
  -- vim.g.neovide_fullscreen = true
  -- vim.g.neovide_remember_window_size = true
  -- vim.g.neovide_cursor_vfx_mode = "railgun"
end

local colorscheme = "astrotheme"
if plugins_enabled.theme then colorscheme = require("user.plugins.theme")[1].colorscheme end

return {
  colorscheme = colorscheme,
  lsp = {
    formatting = {
      format_on_save = false,
    },
  },
  mappings = {},
}
