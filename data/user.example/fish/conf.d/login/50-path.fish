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
