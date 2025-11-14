export GTK_USE_PORTAL=1

# Fcitx5
if [[ "$XDG_SESSION_TYPE" != "wayland" ]]; then
    export GTK_IM_MODULE=fcitx
else
    if [[ "$XDG_SESSION_DESKTOP" != "KDE" ]]; then
        export QT_IM_MODULE=fcitx
    fi
fi
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export INPUT_METHOD=fcitx
export GLFW_IM_MODULE=ibus

export EDITOR=nvim

# Pager
if command -v bat >/dev/null; then
    export PAGER=bat
fi
