if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

if [ -z "$SUDO_USER" ]; then
  USER_HOME="$HOME"
else
  USER_HOME="/home/${SUDO_USER}"
fi
LOCAL_BIN="/usr/local/bin"
APPLICATIONS="/usr/local/share/applications"

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
