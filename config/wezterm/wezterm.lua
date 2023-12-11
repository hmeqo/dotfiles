local wezterm = require("wezterm")

return {
    font = wezterm.font_with_fallback({
        "FiraCode Nerd Font",
        -- Icons
        "Symbols Nerd Font Mono",
        "Noto Color Emoji",
        -- Chinese
        "Noto Sans CJK SC",
    }),
    font_size = 12,

    color_scheme = "Default",

    -- default_prog = { "/bin/bash", "-l", "-c", "tmux attach || tmux" },

    window_padding = {
        left = 2,
        right = 0,
        top = 0,
        bottom = 0,
    },
    window_background_opacity = 0.95,
    window_decorations = "RESIZE",

    hide_tab_bar_if_only_one_tab = true,
}
