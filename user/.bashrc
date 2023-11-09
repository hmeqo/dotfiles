#
# ~/.bashrc
#

if [ "$XDG_SESSION_TYPE" = "x11" ]; then
  # Fcitx5
  export GTK_IM_MODULE=fcitx
  export QT_IM_MODULE=fcitx
  export XMODIFIERS=\@im=fcitx
  export SDL_IM_MODULE=fcitx
  export GLFW_IM_MODULE=ibus
fi
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
  export QT_QPA_PLATFORM="wayland"
  export CLUTTER_BACKEND=wayland
  export SDL_VIDEODRIVER=wayland
  export MOZ_ENABLE_WAYLAND=1

  # Fcitx5
  export XMODIFIERS=\@im=fcitx
  export SDL_IM_MODULE=fcitx
  export GLFW_IM_MODULE=ibus
fi

# Rust
export PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin"

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
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"

# Java
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH="$PATH:$JAVA_HOME/bin"

# Clash
if systemctl is-enabled --quiet "clash-for-linux.service"; then
  export HTTP_PROXY="http://127.0.0.1:7890"
  export HTTPS_PROXY="http://127.0.0.1:7890"
  export NO_PROXY="127.0.0.1,localhost"
fi

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias ll='ls -al'

# Python - pyenv
if type pyenv >/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
