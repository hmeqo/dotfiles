USER_HOME="$HOME"
LOCAL_BIN="$HOME/.local/bin"
APPLICATIONS="$HOME/.local/share/applications"
DOTFILES="${DOTFILES:-$USER_HOME/.config/dotfiles}"

mkdir -p "$LOCAL_BIN"
mkdir -p "$APPLICATIONS"

if python -c "exit(not input('Install preedit scripts? if no, just install fakehome only. [Y/n] ').lower() == 'y')"; then
  ln -sf "$DOTFILES/fakehome/bin/"* "$LOCAL_BIN/"

  ln -sf "$DOTFILES/fakehome/applications/"* "$APPLICATIONS/"
else
  ln -sf "$DOTFILES/fakehome/bin/fakehome" "$LOCAL_BIN/"
fi
