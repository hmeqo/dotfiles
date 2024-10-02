if [ "$EUID" -ne 0 ]; then
	echo "Please run as root"
	exit
fi

USER_HOME="/home/$SUDO_USER"
LOCAL_BIN="/usr/local/bin"
APPLICATIONS="/usr/local/share/applications"

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
