set -gx GTK_USE_PORTAL 1

# Fcitx5
if test "$XDG_SESSION_TYPE" != wayland
    set -gx GTK_IM_MODULE fcitx
else
    if test "$XDG_SESSION_DESKTOP" != KDE
        set -gx QT_IM_MODULE fcitx
    end
end
set -gx XMODIFIERS @im=fcitx
set -gx SDL_IM_MODULE fcitx
set -gx INPUT_METHOD fcitx
set -gx GLFW_IM_MODULE ibus

set -gx EDITOR nvim

# Pager
if command -sq bat
    set -gx PAGER 'bat --style=grid,numbers'
end
