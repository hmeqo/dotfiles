if not vim.g.neovide then
  return {} -- do nothing if not in a Neovide session
end

local function getfontsize()
  if os.getenv "XDG_SESSION_TYPE" == "wayland" or os.getenv "XDG_SESSION_DESKTOP" == "KDE" then
    return "13"
  else
    return "10"
  end
end

---@type LazySpec
return {
  { import = "astrocommunity.recipes.neovide" },
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      options = {
        opt = { -- configure vim.opt options
          -- configure font
          guifont = "Maple Mono NF:h" .. getfontsize(),
          -- -- line spacing
          -- linespace = 0,
        },
        g = { -- configure vim.g variables
          -- neovide_no_idle = true,

          -- -- configure scaling
          -- neovide_scale_factor = 1.0,
          -- -- configure padding
          -- neovide_padding_top = 0,
          -- neovide_padding_bottom = 0,
          -- neovide_padding_right = 0,
          -- neovide_padding_left = 0,

          neovide_opacity = 0.95,
          neovide_hide_mouse_when_typing = true,
          -- neovide_cursor_vfx_mode = "wireframe",
        },
      },
    },
  },
}
