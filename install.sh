if [ -n "$SUDO_USER" ]; then
  echo "Do not run this script with sudo"
  exit
fi

xdm s

if [ -d "/opt/scripts" ]; then
  sudo cp -rf $HOME/dotfiles/scripts/* /opt/scripts
else
  sudo cp -rf $HOME/dotfiles/scripts /opt/scripts
fi

sudo cp -f $HOME/dotfiles/systemd/boot-script.service /etc/systemd/system/boot-script.service
sudo cp -f $HOME/dotfiles/systemd/clash-for-linux.service /etc/systemd/system/clash-for-linux.service
