local wezterm = require "wezterm"

return {
  color_scheme = "Dark+",

  -- font
  font = wezterm.font_with_fallback {
    { family = "Maple Mono NF",           weight = "Regular", italic = false },
    { family = "FiraCode Nerd Font Mono", weight = "Regular", italic = false },
  },
  font_size = 12,
  front_end = "WebGpu",
  webgpu_power_preference = "HighPerformance",
  underline_thickness = "1.5pt",

  -- window
  initial_rows = 32,
  initial_cols = 120,
  window_padding = { left = 2, right = 0, top = 0, bottom = 0 },
  window_background_opacity = 0.95,
  adjust_window_size_when_changing_font_size = false,

  enable_wayland = false,

  -- tabbar
  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = true,
  tab_bar_at_bottom = false,
  tab_max_width = 48,
  show_tab_index_in_tab_bar = false,
  switch_to_last_active_tab_when_closing_tab = true,
  colors = {
    background = "#171717",
    tab_bar = {
      background = "#0e0e0e",
      active_tab = {
        bg_color = "#171717",
        fg_color = "#dfdfdf",
        intensity = "Bold",
      },
      inactive_tab = {
        bg_color = "#0e0e0e",
        fg_color = "#555555",
      },
      inactive_tab_hover = {
        bg_color = "#1c1c1c",
        fg_color = "#888888",
      },
      new_tab = {
        bg_color = "#0e0e0e",
        fg_color = "#555555",
      },
      new_tab_hover = {
        bg_color = "#1c1c1c",
        fg_color = "#dfdfdf",
      },
    },
  },

  -- cursor
  animation_fps = 120,
  cursor_blink_ease_in = "EaseOut",
  cursor_blink_ease_out = "EaseOut",
  default_cursor_style = "BlinkingBlock",
  cursor_blink_rate = 650,

  -- hyperlink
  hyperlink_rules = {
    { regex = "\\b\\w+://(?:[\\w.-]+)\\.[a-z]{2,15}\\S*\\b",              format = "$0" },
    { regex = "\\b\\w+://(?:[\\w.-]+):\\d+\\S*\\b",                       format = "$0" },
    { regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",                          format = "mailto:$0" },
    { regex = "\\bfile://\\S*\\b",                                         format = "$0" },
  },
}
