USER_HOME="$HOME"
LOCAL_BIN="$HOME/.local/bin"
APPLICATIONS="$HOME/.local/share/applications"

sudo mkdir -p "$LOCAL_BIN"
sudo mkdir -p "$APPLICATIONS"

for file in "$USER_HOME/.config/dotfiles/fakehome/bin/"*; do
  if [[ -f $file ]]; then
    sudo ln -sf "$file" "$LOCAL_BIN/$(basename "$file")"
  fi
done

for file in "$USER_HOME/.config/dotfiles/fakehome/applications/"*; do
  if [[ -f $file ]]; then
    sudo ln -sf "$file" "$APPLICATIONS/$(basename "$file")"
  fi
done
