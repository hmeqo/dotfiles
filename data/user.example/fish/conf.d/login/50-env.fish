function has_path
    contains $argv[1] $PATH
end

function append_path
    has_path $argv[1] || set PATH $PATH $argv[1]
end

function prepend_path
    has_path $argv[1] || set PATH $argv[1] $PATH
end

prepend_path "$HOME/.local/bin"

## === Programming ===

## Bash
set -gx HISTFILE "$XDG_DATA_HOME/bash_history"

## bun
if command -sq bun
    prepend_path "$XDG_CACHE_HOME/.bun/bin"
end
## npm
if command -sq npm
    set -gx NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npmrc"
    set -l npm_config 'prefix=${XDG_DATA_HOME}/npm
cache=${XDG_CACHE_HOME}/npm
init-module=${XDG_CONFIG_HOME}/npm/config/npm-init.js
logs-dir=${XDG_STATE_HOME}/npm/logs'
    if not test -f "$NPM_CONFIG_USERCONFIG" || not grep -q "prefix=" "$NPM_CONFIG_USERCONFIG"
        echo -e "\n$npm_config\n" | tee -a "$NPM_CONFIG_USERCONFIG"
    end
    prepend_path "$(npm config get prefix)/bin"
end
## pnpm
if command -sq pnpm
    set -q PNPM_HOME || set -gx PNPM_HOME "$XDG_DATA_HOME/pnpm"
    prepend_path "$PNPM_HOME/bin"
end

## Java
if test -e /usr/lib/jvm/default-runtime
    set -gx _JAVA_OPTIONS "-Djava.util.prefs.userRoot=$XDG_DATA_HOME/java -Dlanguageserver.boot.symbolCacheDir=$XDG_CACHE_HOME/sts4/symbolCache"
    set -gx MAVEN_OPTS "-Dmaven.repo.local=$XDG_DATA_HOME/maven/repository"
    set -gx GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"
    set -gx JAVA_HOME /usr/lib/jvm/default-runtime
end
## Kotlin
if test -e /usr/share/kotlin
    set -gx KOTLIN_HOME /usr/share/kotlin
end

## Python
if command -sq python
    set -gx PYTHON_HISTORY "$XDG_DATA_HOME/python_history"
    set -gx PYPIRC "$XDG_CONFIG_HOME/pypirc"
end
## pyenv
if command -sq pyenv
    set -gx PYENV_ROOT "$XDG_DATA_HOME/pyenv"
    prepend_path "$PYENV_ROOT/bin"
    pyenv init - | source
end
if command -sq mamba || command -sq micromamba
    prepend_path "$XDG_DATA_HOME/mamba/bin"
end

## Rust
if command -sq cargo
    set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
    set -gx RUSTUP_HOME "$XDG_DATA_HOME/rustup"
    prepend_path "$CARGO_HOME/bin"
    # if command -sq sccache
    #   set -gx RUSTC_WRAPPER "$(which sccache)"
    # end
end

## go
set -gx GOPATH "$XDG_DATA_HOME/go"
set -gx GOMODCACHE "$XDG_CACHE_HOME/go/mod"
set -gx GOCACHE "$XDG_CACHE_HOME/go-build"

## Mariadb
if command -sq mariadb
    set -gx MYSQL_HISTFILE "$XDG_DATA_HOME/mariadb_history"
end

## Redis
if command -sq redis
    set -gx REDISCLI_HISTFILE "$XDG_DATA_HOME/rediscli_history"
end

## pm2
if command -sq pm2
    set -gx PM2_HOME "$XDG_DATA_HOME/pm2"
end

## Sqlite
if command -sq sqlite3
    set -gx SQLITE_HISTORY "$XDG_DATA_HOME/sqlite_history"
end

## Pi Agent
if command -sq omp
    set -gx PI_CONFIG_DIR ".config/omp"
    mkdir -p "$PI_CONFIG_DIR/agent"
else if command -sq pi
    set -gx PI_CODING_AGENT_DIR "$XDG_CONFIG_HOME/pi"
    set -gx PI_CODING_AGENT_SESSION_DIR "$XDG_STATE_HOME/pi/sessions"
end

## === Software ===

## nuget
set -gx NUGET_PACKAGES "$XDG_CACHE_HOME/NuGetPackages"

## GTK 2
set -gx GTK2_RC_FILES "$XDG_CONFIG_HOME/gtkrc-2.0"

## CUDA
if command -sq nvidia-smi
    set -gx CUDA_CACHE_PATH "$XDG_CACHE_HOME/nv"
end

## wine
if command -sq wine
    set -gx WINEPREFIX "$XDG_DATA_HOME/wineprefixes/default"
end

## GnuPg
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
mkdir -p "$GNUPGHOME"

## TeamSpeak
if command -sq teamspeak3
    set -gx TS3_CONFIG_DIR "$XDG_CONFIG_HOME/ts3client"
end

## Android Studio
if command -sq audio-studio
    set -gx ANDROID_USER_HOME "$XDG_DATA_HOME/android"
end

## === Desktop ===

set -gx GTK_USE_PORTAL 1

## Input method
if test "$XDG_SESSION_TYPE" != wayland
    set -gx GTK_IM_MODULE fcitx
else
    if test "$XDG_SESSION_DESKTOP" != KDE
        set -gx QT_IM_MODULE fcitx
    end
end
set -gx XMODIFIERS @im=fcitx
set -gx SDL_IM_MODULE fcitx
set -gx INPUT_METHOD fcitx
set -gx GLFW_IM_MODULE ibus

# set -gx QT_WAYLAND_TEXT_INPUT_PROTOCOL zwp_text_input_v1

## === Game ===

## Enable gpl for AMD GPU
# set -gx RADV_PERFTEST gpl

## SDL
set -gx SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS 0
set -gx SDL_VIDEODRIVER wayland,x11

## Gamemode
# set -gx GAMEMODERUNEXEC ""

## === Other ===

## Theme
# set -gx GTK_THEME Fluent-round-Dark
# set -gx QT_STYLE_OVERRIDE kvantum

## SSL
# set -gx SSLKEYLOGFILE "$HOME/.local/share/sslkeylog.log"

## ssh
set -gx SSH_ASKPASS /usr/bin/ksshaskpass
set -gx SSH_ASKPASS_REQUIRE prefer

## Android
set -gx ANDROID_HOME "$XDG_DATA_HOME/Android/Sdk"
set -gx ANDROID_NDK_HOME "$ANDROID_HOME/ndk/29.0.14206865"
set -gx ANDROID_AVD_HOME "$XDG_CONFIG_HOME/.android/avd"
prepend_path "$XDG_DATA_HOME/Android/Sdk/build-tools/36.1.0"
