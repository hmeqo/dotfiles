# --- path ---

function has_path
    contains $argv[1] $PATH
end

function append_path
    has_path $argv[1] || set PATH $PATH $argv[1]
end

function prepend_path
    has_path $argv[1] || set PATH $argv[1] $PATH
end

prepend_path "$HOME/.local/bin"

# npm
if command -sq npm && test -n (npm config get prefix)
    prepend_path "$(npm config get prefix)/bin"
end
# pnpm
if command -sq pnpm
    set -q PNPM_HOME || set -gx PNPM_HOME "$XDG_DATA_HOME/pnpm"
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
if command -sq mamba || command -sq micromamba
    prepend_path "$XDG_DATA_HOME/mamba/bin"
end

# Rust
if command -sq cargo
    set -q CARGO_HOME || set -l CARGO_HOME "$HOME/.cargo"
    prepend_path "$CARGO_HOME/bin"
end

# --- de ---

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

# --- game ---

# set -gx RADV_PERFTEST gpl

set -gx SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS 0
set -gx SDL_VIDEODRIVER wayland

# set -gx GAMEMODERUNEXEC ""

# --- other ---

if command -sq sccache
  set -gx RUSTC_WRAPPER "$(which sccache)"
end

# set -gx GTK_THEME Fluent-round-Dark
# set -gx QT_STYLE_OVERRIDE kvantum

# set -gx SSLKEYLOGFILE "$HOME/.local/share/sslkeylog.log"

# ssh
# set -gx SSH_ASKPASS /usr/bin/ksshaskpass
# set -gx SSH_ASKPASS_REQUIRE prefer
