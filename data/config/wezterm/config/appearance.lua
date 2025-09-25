local wezterm = require "wezterm"

return {
  -- default_prog = { "/usr/bin/bash", "-l", "-c", "tmux attach || tmux" },

  -- color
  color_scheme = "Dark+",
  colors = {
    background = "#171717",
  },

  -- font
  font = wezterm.font_with_fallback {
    { family = "Maple Mono NF",           weight = "Regular", italic = false },
    { family = "FiraCode Nerd Font Mono", weight = "Regular", italic = false },
  },
  font_size = 12,
  front_end = "WebGpu",
  webgpu_power_preference = "HighPerformance",
  underline_thickness = "1.5pt",
  -- freetype_load_target = "Light",
  -- allow_square_glyphs_to_overflow_width = "WhenFollowedBySpace",

  -- window
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

  -- tabbar
  hide_tab_bar_if_only_one_tab = true,

  -- cursor
  animation_fps = 120,
  cursor_blink_ease_in = "EaseOut",
  cursor_blink_ease_out = "EaseOut",
  default_cursor_style = "BlinkingBlock",
  -- default_cursor_style = "SteadyBar",
  cursor_blink_rate = 650,

  -- hyperlink
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
}

-- local gpu_adapters = require('utils.gpu-adapter')
-- local backdrops = require('utils.backdrops')
-- local colors = require('colors.custom')
--
-- return {
--   max_fps = 120,
--   front_end = 'WebGpu', ---@type 'WebGpu' | 'OpenGL' | 'Software'
--   webgpu_power_preference = 'HighPerformance',
--   -- webgpu_preferred_adapter = gpu_adapters:pick_best(),
--   -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Dx12', 'IntegratedGpu'),
--   -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Gl', 'Other'),
--   underline_thickness = '1.5pt',
--
--   -- cursor
--   animation_fps = 120,
--   cursor_blink_ease_in = 'EaseOut',
--   cursor_blink_ease_out = 'EaseOut',
--   default_cursor_style = 'BlinkingBlock',
--   cursor_blink_rate = 650,
--
--   -- color scheme
--   colors = colors,
--
--   -- background: pass in `true` if you want wezterm to start with focus mode on (no bg images)
--   -- background = backdrops:initial_options(false),
--
--   -- scrollbar
--   enable_scroll_bar = true,
--
--   -- tab bar
--   enable_tab_bar = true,
--   hide_tab_bar_if_only_one_tab = false,
--   use_fancy_tab_bar = false,
--   tab_max_width = 25,
--   show_tab_index_in_tab_bar = false,
--   switch_to_last_active_tab_when_closing_tab = true,
--
--   -- command palette
--   command_palette_fg_color = '#b4befe',
--   command_palette_bg_color = '#11111b',
--   command_palette_font_size = 12,
--   command_palette_rows = 25,
--
--   -- window
--   window_padding = {
--     left = 0,
--     right = 0,
--     top = 10,
--     bottom = 7.5,
--   },
--   adjust_window_size_when_changing_font_size = false,
--   window_close_confirmation = 'NeverPrompt',
--   window_frame = {
--     active_titlebar_bg = '#090909',
--     -- font = fonts.font,
--     -- font_size = fonts.font_size,
--   },
--   -- inactive_pane_hsb = {
--   --    saturation = 0.9,
--   --    brightness = 0.65,
--   -- },
--   inactive_pane_hsb = {
--     saturation = 1,
--     brightness = 1,
--   },
--
--   visual_bell = {
--     fade_in_function = 'EaseIn',
--     fade_in_duration_ms = 250,
--     fade_out_function = 'EaseOut',
--     fade_out_duration_ms = 250,
--     target = 'CursorColor',
--   },
-- }
