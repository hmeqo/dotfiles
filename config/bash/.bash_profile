#
# ~/.bash_profile
#

append_path() {
  case ":$PATH:" in
  *:"$1":*) ;;
  *) PATH="${PATH:+$PATH:}$1" ;;
  esac
}

if [ "$XDG_SESSION_TYPE" = "x11" ]; then
  # Fcitx5
  export GTK_IM_MODULE=fcitx
  export QT_IM_MODULE=fcitx
  export XMODIFIERS=\@im=fcitx
  export SDL_IM_MODULE=fcitx
  export GLFW_IM_MODULE=ibus
fi
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
  export QT_QPA_PLATFORM=wayland
  export CLUTTER_BACKEND=wayland
  export SDL_VIDEODRIVER=wayland

  # Fcitx5
  export GTK_IM_MODULE=fcitx
  export QT_IM_MODULE=fcitx
  export XMODIFIERS=\@im=fcitx
  export SDL_IM_MODULE=fcitx
  export GLFW_IM_MODULE=ibus
fi

append_path "$HOME/.local/bin"

export EDITOR=nvim

# Rust
if command -v cargo >/dev/null; then
  append_path "$HOME/.cargo/bin"
fi

# Python - pythonpath
export PYTHONPATH=""
if [ -d "$HOME/repos/python/lib" ]; then
  for i in $(ls -1F $HOME/repos/python/lib | grep -e "/\$"); do
    if [ -z "$PYTHONPATH" ]; then
      export PYTHONPATH="$HOME/repos/python/lib/$i"
    else
      export PYTHONPATH="$PYTHONPATH:$HOME/repos/python/packages/$i"
    fi
  done
fi
# Python - pyenv
if command -v pyenv >/dev/null; then
  export PYENV_ROOT="$HOME/.pyenv"
  append_path "$PYENV_ROOT/bin"
fi

# Java
if command -v java >/dev/null; then
  export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")
  append_path "$JAVA_HOME/bin"
fi
# Kotlin
if command -v kotlin >/dev/null; then
  export KOTLIN_HOME="/usr/share/kotlin"
fi

# pnpm
if command -v pnpm >/dev/null; then
  export PNPM_HOME="/home/hmeqo/.local/share/pnpm"
  append_path "$PNPM_HOME"
fi

[[ -f ~/dotfiles/user/bash/.bash_profile ]] && . ~/dotfiles/user/bash/.bash_profile || true

[[ -f ~/.bashrc ]] && . ~/.bashrc
