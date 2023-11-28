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
  export QT_QPA_PLATFORM=wayland
  export CLUTTER_BACKEND=wayland
  export SDL_VIDEODRIVER=wayland
  export MOZ_ENABLE_WAYLAND=1

  # Fcitx5
  export GTK_IM_MODULE=fcitx
  export QT_IM_MODULE=fcitx
  export XMODIFIERS=\@im=fcitx
  export SDL_IM_MODULE=fcitx
  export GLFW_IM_MODULE=ibus
fi

# Editor
export EDITOR="nvim"
export VISUAL="nvim"

# Default
export PATH="$PATH:$HOME/.local/bin:$HOME/dotfiles/scripts"

# Rust
export PATH="$PATH:$HOME/.cargo/bin"

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
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")
export PATH="$PATH:$JAVA_HOME/bin"
# Kotlin
export KOTLIN_HOME="/usr/share/kotlin"

# Clash
if systemctl is-enabled --quiet "clash-for-linux.service"; then
  export HTTP_PROXY="http://127.0.0.1:7890"
  export HTTPS_PROXY="http://127.0.0.1:7890"
  export NO_PROXY="127.0.0.1,localhost"
fi

# Games
# A Way Out
export OPENSSL_ia32cap="～0x200000200000000"

[[ $- != *i* ]] && return

# ls
if command -v exa >/dev/null; then
  alias ls='exa --icons'
  alias ll='exa -lh --icons'
  alias la='exa -Alh --icons'
  alias lsa='exa -alh --icons'
  alias lst='exa -lTah --icons'

  alias tree="exa -T"
else
  alias ls='ls --color=auto'
  alias ll='ls -lh'
  alias la='ls -Alh'
  alias lsa='ls -alh'
  alias lst='tree -pCsh'
fi

# tmux
if command -v tmux >/dev/null; then
  alias tt='tmux a || tn'
  alias tn='tmux new'
  alias tl='tmux ls'
  alias ta='tmux attach -t'
  alias tk='tmux kill-session -t'
fi

alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

# Python - pyenv
if command -v pyenv >/dev/null; then
  eval "$(pyenv init -)"
fi
