has_path() {
    [[ ":$PATH:" = *":$1:"* ]]
}

append_path() {
    has_path "$1" || PATH="$PATH:$1"
}

prepend_path() {
    has_path "$1" || PATH="$1:$PATH"
}

prepend_path "$HOME/.local/bin"

# npm
if command -v npm >/dev/null && [ -n "$(npm config get prefix)" ]; then
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

# Rust
if command -v cargo >/dev/null; then
    prepend_path "${CARGO_HOME:-$HOME/.cargo}/bin"
fi
