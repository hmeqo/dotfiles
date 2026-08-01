local wezterm = require "wezterm"

return {
  keys = {
    -- splits
    { key = "Enter",     mods = "CTRL|SHIFT|ALT", action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },
    { key = "Enter",     mods = "CTRL|SHIFT",     action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" } },

    -- scroll
    { key = "PageUp",    mods = "CTRL|SHIFT",     action = wezterm.action.ScrollByPage(-1) },
    { key = "PageUp",    mods = "SHIFT",          action = wezterm.action.ScrollByPage(-0.5) },
    { key = "PageDown",  mods = "CTRL|SHIFT",     action = wezterm.action.ScrollByPage(1) },
    { key = "PageDown",  mods = "SHIFT",          action = wezterm.action.ScrollByPage(0.5) },

    -- font
    { key = "0",         mods = "CTRL|SHIFT",     action = wezterm.action.ResetFontSize },
    { key = "=",         mods = "CTRL|SHIFT",     action = wezterm.action.IncreaseFontSize },
    { key = "-",         mods = "CTRL|SHIFT",     action = wezterm.action.DecreaseFontSize },

    -- send ctrl+w
    { key = "Backspace", mods = "CTRL",           action = wezterm.action.SendKey { key = "w", mods = "CTRL" } },

    -- pane navigation
    { key = "h", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Left") },
    { key = "j", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Down") },
    { key = "k", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Up") },
    { key = "l", mods = "CTRL|SHIFT", action = wezterm.action.ActivatePaneDirection("Right") },

    -- move tab
    { key = "PageUp",   mods = "CTRL|ALT", action = wezterm.action.MoveTabRelative(-1) },
    { key = "PageDown", mods = "CTRL|ALT", action = wezterm.action.MoveTabRelative(1) },

    -- tab management
    { key = "t", mods = "CTRL|SHIFT", action = wezterm.action.SpawnTab "CurrentPaneDomain" },
    { key = "q", mods = "CTRL|SHIFT", action = wezterm.action.CloseCurrentPane { confirm = true } },
    { key = "PageUp",   mods = "CTRL", action = wezterm.action.ActivateTabRelative(-1) },
    { key = "PageDown", mods = "CTRL", action = wezterm.action.ActivateTabRelative(1) },

    -- tab switching (alt+number)
    { key = "1", mods = "ALT", action = wezterm.action.ActivateTab(0) },
    { key = "2", mods = "ALT", action = wezterm.action.ActivateTab(1) },
    { key = "3", mods = "ALT", action = wezterm.action.ActivateTab(2) },
    { key = "4", mods = "ALT", action = wezterm.action.ActivateTab(3) },
    { key = "5", mods = "ALT", action = wezterm.action.ActivateTab(4) },
    { key = "6", mods = "ALT", action = wezterm.action.ActivateTab(5) },
    { key = "7", mods = "ALT", action = wezterm.action.ActivateTab(6) },
    { key = "8", mods = "ALT", action = wezterm.action.ActivateTab(7) },
    { key = "9", mods = "ALT", action = wezterm.action.ActivateTab(8) },
    { key = "0", mods = "ALT", action = wezterm.action.ActivateTab(9) },
  },
}
