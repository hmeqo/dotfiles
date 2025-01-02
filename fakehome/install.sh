USER_HOME="$HOME"
LOCAL_BIN="$HOME/.local/bin"
APPLICATIONS="$HOME/.local/share/applications"
DOTFILES="${DOTFILES:-$USER_HOME/.config/dotfiles}"

mkdir -p "$LOCAL_BIN"
mkdir -p "$APPLICATIONS"

if echo -n "Install fakehome only? [y/N] " && read -r answer && [[ $answer = y* ]]; then
  ln -sf "$DOTFILES/fakehome/bin/fakehome" "$LOCAL_BIN/"
else
  ln -sf "$DOTFILES/fakehome/bin/"* "$LOCAL_BIN/"

  ln -sf "$DOTFILES/fakehome/applications/"* "$APPLICATIONS/"
fi
