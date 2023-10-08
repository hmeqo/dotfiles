# fcitx5
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=\@im=fcitx
export SDL_IM_MODULE=fcitx
export GLFW_IM_MODULE=ibus

# Wayland
# export QT_QPA_PLATFORM="wayland;xcb"
# export SDL_VIDEODRIVER=wayland

# Python
export PYTHONPATH="/home/hmeqo/workspace/repos/Python/packages/hmeqotools"

# Java
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk

export PATH="$PATH:$HOME/.local/bin:$HOME/.cargo/bin:${JAVA_HOME}/bin"

# Clash
if [ -f /etc/profile.d/clash.sh ]; then
  source /etc/profile.d/clash.sh
  export http_proxy=http://127.0.0.1:7890
  export https_proxy=http://127.0.0.1:7890
  export no_proxy=127.0.0.1,localhost
  export HTTP_PROXY=$http_proxy
  export HTTPS_PROXY=$https_proxy
  export NO_PROXY=$no_proxy
fi

alias ll='ls -al'
