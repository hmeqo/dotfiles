USER_HOME="$HOME"
LOCAL_BIN="$HOME/.local/bin"
APPLICATIONS="$HOME/.local/share/applications"
DOTFILES="${DOTFILES:-$USER_HOME/.config/dotfiles}"

mkdir -p "$LOCAL_BIN"
mkdir -p "$APPLICATIONS"

for file in "$DOTFILES/fakehome/bin/"*; do
  if [[ -f $file ]]; then
    ln -sf "$file" "$LOCAL_BIN/$(basename "$file")"
  fi
done

for file in "$DOTFILES/fakehome/applications/"*; do
  if [[ -f $file ]]; then
    ln -sf "$file" "$APPLICATIONS/$(basename "$file")"
  fi
done
