has_path() {
    [[ ":$PATH:" = *":$1:"* ]]
}

append_path() {
    has_path "$1" || PATH="$PATH:$1"
}

prepend_path() {
    has_path "$1" || PATH="$1:$PATH"
}

# Fcitx5
# GTK_IM_MODULE=fcitx QT_IM_MODULE=fcitx XMODIFIERS=@im=fcitx SDL_IM_MODULE=fcitx INPUT_METHOD=fcitx GLFW_IM_MODULE=ibus
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export INPUT_METHOD=fcitx
export GLFW_IM_MODULE=ibus

prepend_path "$HOME/.local/bin"

export EDITOR="nvim"

# Pager
if command -v bat >/dev/null; then
    export PAGER="bat"
fi

# npm
if command -v npm >/dev/null; then
    prepend_path "$(npm config get prefix)/bin"
fi
# pnpm
if command -v pnpm >/dev/null; then
    prepend_path "${PNPM_HOME:=$HOME/.local/share/pnpm}"
fi

# Java
if [[ -e "/usr/lib/jvm/default-runtime" ]]; then
    export JAVA_HOME="/usr/lib/jvm/default-runtime"
fi
# Kotlin
if [[ -e "/usr/share/kotlin" ]]; then
    export KOTLIN_HOME="/usr/share/kotlin"
fi

# Python
# pyenv
if command -v pyenv >/dev/null; then
    prepend_path "${PYENV_ROOT:-$HOME/.pyenv}/bin"
    eval "$(pyenv init -)"
fi
# rye
if command -v rye >/dev/null; then
    prepend_path "${RYE_HOME:-$HOME/.rye}/shims"
fi

# Rust
if command -v cargo >/dev/null; then
    prepend_path "${CARGO_HOME:-$HOME/.cargo}/bin"
fi
