function has_path
    contains $argv[1] $PATH
end

function append_path
    has_path $argv[1] || set PATH $PATH $argv[1]
end

function prepend_path
    has_path $argv[1] || set PATH $argv[1] $PATH
end

set -gx GTK_USE_PORTAL 1

# Game
set -gx RADV_PERFTEST gpl
set -gx SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS 0

# Fcitx5
if test "$XDG_SESSION_TYPE" != wayland
    set -gx GTK_IM_MODULE fcitx
end
set -gx QT_IM_MODULE fcitx
set -gx XMODIFIERS @im=fcitx
set -gx SDL_IM_MODULE fcitx
set -gx INPUT_METHOD fcitx
set -gx GLFW_IM_MODULE ibus

prepend_path "$HOME/.local/bin"

set -gx EDITOR nvim

# Pager
if command -sq bat
    set -gx PAGER 'bat --style=grid,numbers'
end

# npm
if command -sq npm
    prepend_path "$(npm config get prefix)/bin"
end
# pnpm
if command -sq pnpm
    set -q PNPM_HOME || set -gx PNPM_HOME "$HOME/.local/share/pnpm"
    prepend_path "$PNPM_HOME"
end

# Java
if test -e /usr/lib/jvm/default-runtime
    set -gx JAVA_HOME /usr/lib/jvm/default-runtime
end
# Kotlin
if test -e /usr/share/kotlin
    set -gx KOTLIN_HOME /usr/share/kotlin
end

# Python
# pyenv
if command -sq pyenv
    set -q PYENV_ROOT || set -l PYENV_ROOT "$HOME/.pyenv"
    prepend_path "$PYENV_ROOT/bin"
    pyenv init - | source
end

# Rust
if command -sq cargo
    set -q CARGO_HOME || set -l CARGO_HOME "$HOME/.cargo"
    prepend_path "$CARGO_HOME/bin"
end
