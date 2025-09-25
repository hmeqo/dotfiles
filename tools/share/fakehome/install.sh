#!/usr/bin/bash

USER_HOME="$HOME"
LOCAL_BIN="$HOME/.local/bin"
APPLICATIONS="$HOME/.local/share/applications"
DOTFILES="${DOTFILES:-$USER_HOME/.local/opt/dotfiles}"

mkdir -p "$LOCAL_BIN"
mkdir -p "$APPLICATIONS"

if python -c "exit(not (input('Install preedit scripts? (if no, just install fakehome only) [Y/n] ').lower() or 'y') == 'y')"; then
  ln -sf "$DOTFILES/tools/share/fakehome/bin/"* "$LOCAL_BIN/"

  ln -sf "$DOTFILES/tools/share/fakehome/applications/"* "$APPLICATIONS/"
else
  ln -sf "$DOTFILES/tools/share/fakehome/bin/fakehome" "$LOCAL_BIN/"
fi
