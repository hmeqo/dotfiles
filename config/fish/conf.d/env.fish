function append_path
  switch "$PATH"
    case "*$argv[1]*"
    case "*"
      set -gx PATH $PATH $argv[1]
  end
end

# Fcitx5
if test "$XDG_CURRENT_DESKTOP" = "KDE" && test "$XDG_SESSION_TYPE" = "wayland"
  set -gx GTK_IM_MODULE fcitx
  set -gx QT_IM_MODULE fcitx
else
  set -gx GTK_IM_MODULE fcitx
  set -gx QT_IM_MODULE fcitx
  set -gx XMODIFIERS @im=fcitx
  set -gx SDL_IM_MODULE fcitx
  set -gx GLFW_IM_MODULE ibus
end

append_path "$HOME/.local/bin"

set -gx EDITOR nvim

# Rust
if type -q cargo
  append_path "$HOME/.cargo/bin"
end

# Python - pythonpath
if test -d "$HOME/repos/python/lib"
  set -gx PYTHONPATH ""
  for i in $HOME/repos/python/lib/*
    set -gx PYTHONPATH "$PYTHONPATH" "$i"
  end
  set -gx PYTHONPATH (string trim -l -c ":" -- "$PYTHONPATH")
end
# Python - pyenv
if type -q pyenv
  set -gx PYENV_ROOT "$HOME/.pyenv"
  append_path "$PYENV_ROOT/bin"
  pyenv init - | source
end

# Java
if type -q java
  set -gx JAVA_HOME (readlink -f /usr/bin/java | string replace "/bin/java" "")
  append_path "$JAVA_HOME/bin"
end
# Kotlin
if type -q kotlin
  set -gx KOTLIN_HOME "/usr/share/kotlin"
end

# pnpm
if type -q pnpm
  set -gx PNPM_HOME "$HOME/.local/share/pnpm"
  append_path "$PNPM_HOME"
end
