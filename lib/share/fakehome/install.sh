USER_HOME="$HOME"
LOCAL_BIN="$HOME/.local/bin"
APPLICATIONS="$HOME/.local/share/applications"
DOTFILES="${DOTFILES:-$USER_HOME/.config/dotfiles}"

mkdir -p "$LOCAL_BIN"
mkdir -p "$APPLICATIONS"

if python -c "exit(not input('Install preedit scripts? (if no, just install fakehome only) [Y/n] ').lower() != 'n')"; then
  ln -sf "$DOTFILES/lib/share/fakehome/bin/"* "$LOCAL_BIN/"

  ln -sf "$DOTFILES/lib/share/fakehome/applications/"* "$APPLICATIONS/"
else
  ln -sf "$DOTFILES/lib/share/fakehome/bin/fakehome" "$LOCAL_BIN/"
fi
