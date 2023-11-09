if [ -n "$SUDO_USER" ]
then 
  echo "Do not run this script with sudo"
  exit
fi

xdm s

sudo bash -c "
  cp -rf $HOME/dotfiles/scripts /opt/scripts
  cp -f $HOME/dotfiles/systemd/boot-script.service /etc/systemd/system/boot-script.service
  cp -f $HOME/dotfiles/systemd/clash-for-linux.service /etc/systemd/system/clash-for-linux.service
"
