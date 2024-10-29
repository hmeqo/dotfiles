USER_HOME="$HOME"
LOCAL_BIN="$HOME/.local/bin"
APPLICATIONS="$HOME/.local/share/applications"

if [ "$1" = "--clean" ]; then
  echo "Remove $USER_HOME/.local/share/fakehome"
  rm -rf "$USER_HOME/.local/share/fakehome"
fi

for file in "$LOCAL_BIN"/*; do
  [[ -L "$file" ]] || continue
  if [[ $(readlink "$file") = "$USER_HOME/.config/dotfiles/fakehome/bin/"* ]]; then
    unlink "$file"
  fi
done

for file in "$APPLICATIONS"/*; do
  [[ -L "$file" ]] || continue
  if [[ $(readlink "$file") = "$USER_HOME/.config/dotfiles/fakehome/applications/"* ]]; then
    unlink "$file"
  fi
done
