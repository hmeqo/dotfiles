local wezterm = require "wezterm"

return {
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
    { key = "0", mods = "CTRL|SHIFT", action = wezterm.action.ResetFontSize },
    { key = "=", mods = "CTRL|SHIFT", action = wezterm.action.IncreaseFontSize },
    { key = "-", mods = "CTRL|SHIFT", action = wezterm.action.DecreaseFontSize },
    { key = "Backspace", mods = "CTRL", action = wezterm.action.SendKey { key = "w", mods = "CTRL" } },
  },
}
