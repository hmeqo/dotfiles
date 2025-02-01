export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# Bash
export HISTFILE="$XDG_DATA_HOME/bash_history"

# python
export PYTHON_HISTORY="$XDG_DATA_HOME/python_history"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export PYPIRC="$XDG_CONFIG_HOME/pypirc"

# rust
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

# java
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_DATA_HOME/java -Dlanguageserver.boot.symbolCacheDir=$XDG_CACHE_HOME/sts4/symbolCache"
export MAVEN_OPTS="-Dmaven.repo.local=$XDG_DATA_HOME/maven/repository"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"

# go
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export GOCACHE="$XDG_CACHE_HOME/go-build"

# npm
if command -v npm >/dev/null; then
    export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npmrc"
    npm_config='prefix=${XDG_DATA_HOME}/npm
cache=${XDG_CACHE_HOME}/npm
init-module=${XDG_CONFIG_HOME}/npm/config/npm-init.js
logs-dir=${XDG_STATE_HOME}/npm/logs'
    if [[ ! -f "$NPM_CONFIG_USERCONFIG" ]] || ! grep -q "$npm_config" "$NPM_CONFIG_USERCONFIG"; then
        echo -e "\n$npm_config\n" >>"$NPM_CONFIG_USERCONFIG"
    fi
fi

# Sqlite
export SQLITE_HISTORY="$XDG_DATA_HOME/sqlite_history"

# Mariadb
export MYSQL_HISTFILE="$XDG_DATA_HOME/mariadb_history"

# Redis
export REDISCLI_HISTFILE="$XDG_DATA_HOME/redis/rediscli_history"

# GnuPg
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# GTK 2
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtkrc-2.0"

# CUDA
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"

# TeamSpeak
export TS3_CONFIG_DIR="$XDG_CONFIG_HOME/ts3client"

# wine
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
