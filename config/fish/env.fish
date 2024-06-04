function has_path
  contains $argv[1] $PATH
end

function append_path
  has_path $argv[1] || set PATH $PATH $argv[1]
end

function prepend_path
  has_path $argv[1] || set PATH $argv[1] $PATH
end

# Fcitx5
if test "$XDG_CURRENT_DESKTOP" != "KDE" || test "$XDG_SESSION_TYPE" != "wayland"
  load_input_method_env
end

prepend_path "$HOME/.local/bin"

set -gx EDITOR "nvim"

# Pager
if type -q bat
  set -gx PAGER "bat"
end

# Rust
if type -q cargo
  prepend_path "$HOME/.cargo/bin"
end

# Python - pyenv
if type -q pyenv
  set -gx PYENV_ROOT "$HOME/.pyenv"
  prepend_path "$PYENV_ROOT/bin"
  pyenv init - | source
end

# Java
if type -q java
  set -gx JAVA_HOME (readlink -f /usr/bin/java | string replace "/bin/java" "")
end
# Kotlin
if type -q kotlin
  set -gx KOTLIN_HOME "/usr/share/kotlin"
end

# pnpm
if type -q pnpm
  set -gx PNPM_HOME "$HOME/.local/share/pnpm"
  prepend_path "$PNPM_HOME"
end
