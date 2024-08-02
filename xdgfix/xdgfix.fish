set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"
set -gx XDG_CACHE_HOME "$HOME/.cache"

# Bash
set -gx HISTFILE "$XDG_STATE_HOME/bash_history"

# GnuPg
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"

# python
set -gx PYTHON_HISTORY "$XDG_STATE_HOME/python_history"
set -gx PYENV_ROOT "$XDG_DATA_HOME/pyenv"
set -gx RYE_HOME "$XDG_DATA_HOME/rye"

# rust
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"

# npm
set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npmrc"
set -l npm_config 'prefix=${XDG_DATA_HOME}/npm
cache=${XDG_CACHE_HOME}/npm
init-module=${XDG_CONFIG_HOME}/npm/config/npm-init.js
logs-dir=${XDG_STATE_HOME}/npm/logs'
if not test -f $NPM_CONFIG_USERCONFIG || not grep -q $npm_config $NPM_CONFIG_USERCONFIG
  echo -e "\n$npm_config\n" >> $NPM_CONFIG_USERCONFIG
end

# GTK 2
set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtkrc-2.0"

# java
set -gx _JAVA_OPTIONS "-Djava.util.prefs.userRoot=$XDG_DATA_HOME/java -Dlanguageserver.boot.symbolCacheDir=$XDG_CACHE_HOME/sts4/symbolCache"
set -gx MAVEN_OPTS "-Dmaven.repo.local=$XDG_DATA_HOME/maven/repository"
set -gx GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"

# go
set -gx GOPATH "$XDG_DATA_HOME/go"
set -gx GOMODCACHE "$XDG_CACHE_HOME/go/mod"
set -gx GOCACHE "$XDG_CACHE_HOME/go-build"

# CUDA
set -gx CUDA_CACHE_PATH "$XDG_CACHE_HOME/nv"

# TeamSpeak
set -gx TS3_CONFIG_DIR "$XDG_CONFIG_HOME/ts3client"

# wine
set -gx WINEPREFIX "$XDG_DATA_HOME/wineprefixes/default"

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
