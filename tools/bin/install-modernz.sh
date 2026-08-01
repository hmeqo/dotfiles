set -e

MODERNZ_HOME="${MODERNZ_HOME:-$HOME/.local/opt/ModernZ}"
scripts_dir="$HOME/.config/mpv/scripts"
fonts_dir="$HOME/.config/mpv/fonts"
script_opt_dir="$HOME/.config/mpv/script-opts"
user_cfg="$HOME/.config/mpv/script-opts/modernz.conf"

mkdir -p "$scripts_dir"
mkdir -p "$fonts_dir"
mkdir -p "$script_opt_dir"

cp "$MODERNZ_HOME"/modernz.lua "$scripts_dir"
cp "$MODERNZ_HOME"/modernz-icons.ttf "$fonts_dir"
cp "$MODERNZ_HOME"/extras/locale/modernz-locale.json "$script_opt_dir"

if [[ ! -f "$user_cfg" ]]; then
  cp "$MODERNZ_HOME/modernz.conf" "$user_cfg"
fi
