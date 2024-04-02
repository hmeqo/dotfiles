function append_path
  switch "$PATH"
    case "*$argv[1]*"
    case "*"
      set -x PATH $PATH $argv[1]
  end
end

# Fcitx5
if test "$XDG_CURRENT_DESKTOP" = "KDE" && test "$XDG_SESSION_TYPE" = "wayland"
  set -x GTK_IM_MODULE fcitx
  set -x QT_IM_MODULE fcitx
else
  set -x GTK_IM_MODULE fcitx
  set -x QT_IM_MODULE fcitx
  set -x XMODIFIERS @im=fcitx
  set -x SDL_IM_MODULE fcitx
  set -x GLFW_IM_MODULE ibus
end

append_path "$HOME/.local/bin"

set -x EDITOR nvim

# Rust
if type -q cargo
  append_path "$HOME/.cargo/bin"
end

# Python - pythonpath
set -x PYTHONPATH ""
if test -d "$HOME/repos/python/lib"
  for i in $HOME/repos/python/lib/*
    set -x PYTHONPATH "$PYTHONPATH" "$i"
  end
  set -x PYTHONPATH (string trim -l -c ":" -- "$PYTHONPATH")
end
# Python - pyenv
if type -q pyenv
  set -gx PYENV_ROOT "$HOME/.pyenv"
  append_path "$PYENV_ROOT/bin"
  pyenv init - | source
end

# Java
if type -q java
  set -x JAVA_HOME (readlink -f /usr/bin/java | string replace "/bin/java" "")
  append_path "$JAVA_HOME/bin"
end
# Kotlin
if type -q kotlin
  set -x KOTLIN_HOME "/usr/share/kotlin"
end

# pnpm
if type -q pnpm
  set -x PNPM_HOME "/home/hmeqo/.local/share/pnpm"
  append_path "$PNPM_HOME"
end
