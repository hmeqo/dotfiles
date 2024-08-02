#!/usr/bin/bash

waybarswitchtheme() {
  CONFIG_DIR="$HOME/.config/dotfiles/config/waybar"

  THEME=$(echo "$CONFIG_DIR"/themes/* | tr ' ' '\n' | xargs -n 1 basename | fzf --layout=reverse --height 12)

  if [[ -n "$THEME" ]]; then
    ln -sf "../themes/$THEME/config.jsonc" "$CONFIG_DIR/current/config.jsonc"
    ln -sf "../themes/$THEME/style.css" "$CONFIG_DIR/current/style.css"
  fi
}

export -f waybarswitchtheme

dbus-update-activation-environment --systemd --all
