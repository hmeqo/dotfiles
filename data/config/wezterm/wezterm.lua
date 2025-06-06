local wezterm = require "wezterm"

return {
  -- default_prog = { "/usr/bin/bash", "-l", "-c", "tmux attach || tmux" },
  color_scheme = "Dark+",
  colors = {
    -- background = "#232627",
    background = "#252525",
  },

  font = wezterm.font_with_fallback {
    "Maple Mono NF",
  },
  font_size = 12,
  -- freetype_load_target = "Light",
  -- allow_square_glyphs_to_overflow_width = "WhenFollowedBySpace",
  default_cursor_style = "SteadyBar",

  initial_rows = 32,
  initial_cols = 120,
  window_padding = {
    left = 2,
    right = 0,
    top = 0,
    bottom = 0,
  },
  window_background_opacity = 0.95,
  -- window_decorations = "RESIZE",
  adjust_window_size_when_changing_font_size = false,

  enable_wayland = false,

  hide_tab_bar_if_only_one_tab = true,

  hyperlink_rules = {
    -- Linkify things that look like URLs
    -- This is actually the default if you don't specify any hyperlink_rules
    {
      regex = "\\b\\w+://(?:[\\w.-]+)\\.[a-z]{2,15}\\S*\\b",
      format = "$0",
    },
    -- match the URL with a PORT
    -- such 'http://localhost:3000/index.html'
    {
      regex = "\\b\\w+://(?:[\\w.-]+):\\d+\\S*\\b",
      format = "$0",
    },
    -- linkify email addresses
    {
      regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
      format = "mailto:$0",
    },
    -- file:// URI
    {
      regex = "\\bfile://\\S*\\b",
      format = "$0",
    },
  },

  keys = {
    {
      key = "Enter",
      mods = "CTRL|SHIFT|ALT",
      action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" },
    },
    {
      key = "Enter",
      mods = "CTRL|SHIFT",
      action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" },
    },
    {
      key = "PageUp",
      mods = "CTRL|SHIFT",
      action = wezterm.action.ScrollByPage(-1),
    },
    {
      key = "PageUp",
      mods = "SHIFT",
      action = wezterm.action.ScrollByPage(-0.5),
    },
    {
      key = "PageDown",
      mods = "CTRL|SHIFT",
      action = wezterm.action.ScrollByPage(1),
    },
    {
      key = "PageDown",
      mods = "SHIFT",
      action = wezterm.action.ScrollByPage(0.5),
    },
    { key = "0", mods = "CTRL", action = wezterm.action.ResetFontSize },
    { key = "=", mods = "CTRL", action = wezterm.action.IncreaseFontSize },
    { key = "-", mods = "CTRL", action = wezterm.action.DecreaseFontSize },
    { key = "Backspace", mods = "CTRL", action = wezterm.action.SendKey { key = "w", mods = "CTRL" } },
  },
}
