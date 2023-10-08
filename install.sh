xdm s

sudo install -Dm644 $HOME/dotfiles/etc/profile.d/01.sh /etc/profile.d/01.sh
sudo install -Dm644 $HOME/dotfiles/etc/systemd/boot-script.service /etc/systemd/system/boot-script.service
sudo install -Dm644 $HOME/dotfiles/etc/systemd/clash-for-linux.service /etc/systemd/system/clash-for-linux.service
