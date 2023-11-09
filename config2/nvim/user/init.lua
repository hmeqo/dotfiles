if vim.g.neovide then
  vim.o.guifont = "FiraCode Nerd Font:h12"
  vim.g.neovide_transparency = 0.95
  vim.g.neovide_hide_mouse_when_typing = true
  -- vim.g.neovide_no_idle = true
  -- vim.g.neovide_fullscreen = true
  -- vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
end

return {
  colorscheme = "tokyonight-night",
  lsp = {
    formatting = {
      format_on_save = false,
    },
  },
}
