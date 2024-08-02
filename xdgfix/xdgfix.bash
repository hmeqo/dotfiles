export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# Bash
export HISTFILE="$XDG_STATE_HOME/bash_history"

# GnuPg
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# python
export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export RYE_HOME="$XDG_DATA_HOME/rye"

# rust
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# npm
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npmrc"
npm_config='prefix=${XDG_DATA_HOME}/npm
cache=${XDG_CACHE_HOME}/npm
init-module=${XDG_CONFIG_HOME}/npm/config/npm-init.js
logs-dir=${XDG_STATE_HOME}/npm/logs'
if [[ ! -f $NPM_CONFIG_USERCONFIG ]] || ! grep -q $npm_config $NPM_CONFIG_USERCONFIG; then
  echo -e "\n$npm_config\n" >> $NPM_CONFIG_USERCONFIG
fi

# GTK 2
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtkrc-2.0"

# java
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_DATA_HOME/java -Dlanguageserver.boot.symbolCacheDir=$XDG_CACHE_HOME/sts4/symbolCache"
export MAVEN_OPTS="-Dmaven.repo.local=$XDG_DATA_HOME/maven/repository"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"

# go
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export GOCACHE="$XDG_CACHE_HOME/go-build"

# CUDA
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"

# TeamSpeak
export TS3_CONFIG_DIR="$XDG_CONFIG_HOME/ts3client"

# wine
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default

ln -sf ~/.config/dotfiles/xdgfix/bin/fakehome ~/.local/bin/fakehome
# steam
ln -sf ~/.config/dotfiles/xdgfix/applications/steam.desktop "$XDG_DATA_HOME/applications/steam.desktop"
ln -sf ~/.config/dotfiles/xdgfix/bin/steam ~/.local/bin/steam
ln -sf ~/.config/dotfiles/xdgfix/bin/steam ~/.local/bin/steam-runtime
# minecraft-launcher
ln -sf ~/.config/dotfiles/xdgfix/bin/hmcl-bin ~/.local/bin/minecraft-launcher
# hmcl-bin
ln -sf ~/.config/dotfiles/xdgfix/bin/hmcl-bin ~/.local/bin/hmcl-bin
# thunderbird
ln -sf ~/.config/dotfiles/xdgfix/bin/thunderbird ~/.local/bin/thunderbird
# firefox
ln -sf ~/.config/dotfiles/xdgfix/applications/firefox.desktop "$XDG_DATA_HOME/applications/firefox.desktop"
ln -sf ~/.config/dotfiles/xdgfix/bin/firefox ~/.local/bin/firefox
# code
ln -sf ~/.config/dotfiles/xdgfix/applications/code.desktop "$XDG_DATA_HOME/applications/code.desktop"
ln -sf ~/.config/dotfiles/xdgfix/applications/code-url-handler.desktop "$XDG_DATA_HOME/applications/code-url-handler.desktop"
ln -sf ~/.config/dotfiles/xdgfix/bin/code ~/.local/bin/code
# jetbrains-fleet
ln -sf ~/.config/dotfiles/xdgfix/bin/jetbrains-fleet ~/.local/bin/jetbrains-fleet
