has_path() {
    [[ ":$PATH:" = *":$1:"* ]]
}

append_path() {
    has_path "$1" || PATH="$PATH:$1"
}

prepend_path() {
    has_path "$1" || PATH="$1:$PATH"
}

prepend_path "$HOME/.local/bin"

## === Programming ===

## Bash
export HISTFILE="$XDG_STATE_HOME/bash_history"

## bun
if command -v bun >/dev/null; then
    prepend_path "$XDG_CACHE_HOME/.bun/bin"
fi
## npm
if command -v npm >/dev/null; then
    export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npmrc"
    npm_config='prefix=${XDG_DATA_HOME}/npm
cache=${XDG_CACHE_HOME}/npm
init-module=${XDG_CONFIG_HOME}/npm/config/npm-init.js
logs-dir=${XDG_STATE_HOME}/npm/logs'
    if [[ ! -f "$NPM_CONFIG_USERCONFIG" ]] || ! grep -q "prefix=" "$NPM_CONFIG_USERCONFIG"; then
        echo -e "\n$npm_config\n" | tee -a "$NPM_CONFIG_USERCONFIG"
    fi
    prepend_path "$(npm config get prefix)/bin"
fi
## pnpm
if command -v pnpm >/dev/null; then
    export PNPM_HOME="${PNPM_HOME:-$XDG_DATA_HOME/pnpm}"
    prepend_path "$PNPM_HOME/bin"
fi

## Python
if command -v python >/dev/null; then
    export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"
    export PYPIRC="$XDG_CONFIG_HOME/pypirc"
fi
## pyenv
if command -v pyenv >/dev/null; then
    export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
    prepend_path "$PYENV_ROOT/bin"
    eval "$(pyenv init -)"
fi
if command -v mamba >/dev/null || command -v micromamba >/dev/null; then
    prepend_path "$XDG_DATA_HOME/mamba/bin"
fi

## Rust
if command -v cargo >/dev/null; then
    export CARGO_HOME="$XDG_DATA_HOME/cargo"
    export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
    prepend_path "$CARGO_HOME/bin"
    # if command -v sccache >/dev/null; then
    #   export RUSTC_WRAPPER="$(which sccache)"
    # fi
fi

## go
if command -v go >/dev/null; then
    export GOPATH="$XDG_DATA_HOME/go"
    export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
    export GOCACHE="$XDG_CACHE_HOME/go-build"
    prepend_path "$GOPATH/bin"
fi

## Java
if [[ -e "/usr/lib/jvm/default-runtime" ]]; then
    export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_DATA_HOME/java -Dlanguageserver.boot.symbolCacheDir=$XDG_CACHE_HOME/sts4/symbolCache"
    export MAVEN_OPTS="-Dmaven.repo.local=$XDG_DATA_HOME/maven/repository"
    export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
    export JAVA_HOME="/usr/lib/jvm/default-runtime"
fi
## Kotlin
if [[ -e "/usr/share/kotlin" ]]; then
    export KOTLIN_HOME="/usr/share/kotlin"
fi

## Mariadb
if command -v mariadb >/dev/null; then
    export MYSQL_HISTFILE="$XDG_STATE_HOME/mariadb_history"
fi

## Redis
if command -v redis >/dev/null; then
    export REDISCLI_HISTFILE="$XDG_STATE_HOME/rediscli_history"
fi

## pm2
if command -v pm2 >/dev/null; then
    export PM2_HOME="$XDG_DATA_HOME/pm2"
fi

## Sqlite
if command -v sqlite3 >/dev/null; then
    export SQLITE_HISTORY="$XDG_STATE_HOME/sqlite_history"
fi

## === Agent ===

## Pi Agent
if command -v omp >/dev/null; then
    export PI_CONFIG_DIR=".config/omp"
    mkdir -p "$HOME/$PI_CONFIG_DIR/agent"
elif command -v pi >/dev/null; then
    export PI_CODING_AGENT_DIR="$XDG_CONFIG_HOME/pi"
    export PI_CODING_AGENT_SESSION_DIR="$XDG_STATE_HOME/pi/sessions"
fi

## Codex
if command -v codex >/dev/null; then
    export CODEX_HOME="$HOME/.local/share/codex"
    mkdir -p "$CODEX_HOME"
fi

## DSH
if command -v codex >/dev/null; then
    export DSH_HOME="$HOME/.local/share/dsh"
fi

## === Software ===

## nuget
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"

## GTK 2
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtkrc-2.0"

## CUDA
if command -v nvidia-smi >/dev/null; then
    export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
fi

## wine
if command -v wine >/dev/null; then
    export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
fi

## GnuPg
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
mkdir -p "$GNUPGHOME"

## TeamSpeak
if command -v teamspeak3 >/dev/null; then
    export TS3_CONFIG_DIR="$XDG_CONFIG_HOME/ts3client"
fi

## Android Studio
if command -v audio-studio >/dev/null; then
    export ANDROID_USER_HOME="$XDG_DATA_HOME/android"
fi

## === Desktop ===

export GTK_USE_PORTAL=1

## Input method
if [[ "$XDG_SESSION_TYPE" != "wayland" ]]; then
    export GTK_IM_MODULE=fcitx
    export QT_IM_MODULE=fcitx
else
    if [[ "$XDG_SESSION_DESKTOP" != "KDE" ]]; then
        export QT_IM_MODULE=fcitx
    fi
fi
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export INPUT_METHOD=fcitx
export GLFW_IM_MODULE=ibus

# export QT_WAYLAND_TEXT_INPUT_PROTOCOL=zwp_text_input_v1

## === Game ===

## Enable gpl for AMD GPU
# export RADV_PERFTEST=gpl

## SDL
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0
export SDL_VIDEODRIVER=wayland,x11

## Gamemode
# export GAMEMODERUNEXEC=""

## === Other ===

## Theme
# export GTK_THEME=Fluent-round-Dark
# export QT_STYLE_OVERRIDE=kvantum

## SSL
# export SSLKEYLOGFILE="$HOME/.local/state/sslkeylog.log"

## ssh
export SSH_ASKPASS=/usr/bin/ksshaskpass
export SSH_ASKPASS_REQUIRE=prefer
