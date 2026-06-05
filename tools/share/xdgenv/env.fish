set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"
set -gx XDG_CACHE_HOME "$HOME/.cache"

# GnuPg
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
mkdir -p "$GNUPGHOME"

# python
set -gx PYTHON_HISTORY "$XDG_DATA_HOME/python_history"
set -gx PYENV_ROOT "$XDG_DATA_HOME/pyenv"
set -gx PYPIRC "$XDG_CONFIG_HOME/pypirc"

# rust
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"

# java
set -gx _JAVA_OPTIONS "-Djava.util.prefs.userRoot=$XDG_DATA_HOME/java -Dlanguageserver.boot.symbolCacheDir=$XDG_CACHE_HOME/sts4/symbolCache"
set -gx MAVEN_OPTS "-Dmaven.repo.local=$XDG_DATA_HOME/maven/repository"
set -gx GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"

# go
set -gx GOPATH "$XDG_DATA_HOME/go"
set -gx GOMODCACHE "$XDG_CACHE_HOME/go/mod"
set -gx GOCACHE "$XDG_CACHE_HOME/go-build"

# nuget
set -gx NUGET_PACKAGES "$XDG_CACHE_HOME/NuGetPackages"

# Sqlite
set -gx SQLITE_HISTORY "$XDG_DATA_HOME/sqlite_history"

# GTK 2
set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtkrc-2.0"

# CUDA
if type -q nvidia-smi
    set -gx CUDA_CACHE_PATH "$XDG_CACHE_HOME/nv"
end

# wine
if type -q wine
    set -gx WINEPREFIX "$XDG_DATA_HOME/wineprefixes/default"
end

# npm
if type -q npm
    set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npmrc"
    set -l npm_config 'prefix=${XDG_DATA_HOME}/npm
cache=${XDG_CACHE_HOME}/npm
init-module=${XDG_CONFIG_HOME}/npm/config/npm-init.js
logs-dir=${XDG_STATE_HOME}/npm/logs'
    if not test -f "$NPM_CONFIG_USERCONFIG" || not grep -q "prefix=" "$NPM_CONFIG_USERCONFIG"
        echo -e "\n$npm_config\n" | tee -a "$NPM_CONFIG_USERCONFIG"
    end
end

# pm2
if type -q pm2
    set -gx PM2_HOME "$XDG_DATA_HOME/pm2"
end

# Mariadb
if type -q mariadb
    set -gx MYSQL_HISTFILE "$XDG_DATA_HOME/mariadb_history"
end

# Redis
if type -q redis
    set -gx REDISCLI_HISTFILE "$XDG_DATA_HOME/rediscli_history"
end

# TeamSpeak
if type -q teamspeak3
    set -gx TS3_CONFIG_DIR "$XDG_CONFIG_HOME/ts3client"
end

# Android Studio
if type -q audio-studio
    set -gx ANDROID_USER_HOME "$XDG_DATA_HOME/android"
end

# Pi Agent
if type -q pi
    set -gx PI_CODING_AGENT_DIR "$XDG_CONFIG_HOME/pi"
    set -gx PI_CODING_AGENT_SESSION_DIR "$XDG_STATE_HOME/pi/sessions"
end
