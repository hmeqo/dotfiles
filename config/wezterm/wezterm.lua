local wezterm = require("wezterm")

return {
    font = wezterm.font_with_fallback({
        "FiraCode Nerd Font",
        -- Icons
        "Noto Color Emoji",
        -- Chinese
        "Noto Sans CJK SC",
    }),
    font_size = 12,

    color_scheme = "default",

    window_padding = {
        left = 2,
        right = 0,
        top = 0,
        bottom = 0,
    },
    window_background_opacity = 0.9,
    -- window_decorations = "RESIZE",

    hide_tab_bar_if_only_one_tab = true,

    keys = {
        {
            key = "Enter",
            mods = "CTRL|SHIFT|ALT",
            action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
        },
        {
            key = "Enter",
            mods = "CTRL|SHIFT",
            action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
        },
        {
            key = "PageUp",
            mods = "CTRL|SHIFT",
            action = wezterm.action.ScrollByPage(-1),
        },
        {
            key = "PageDown",
            mods = "CTRL|SHIFT",
            action = wezterm.action.ScrollByPage(1),
        },
    },
}
