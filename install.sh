if [ -n "$SUDO_USER" ]; then
  echo "Do not run this script with sudo"
  exit 1
fi

create_link() {
  if [ -L $2 ]; then
    ls -l --color $2
    return
  fi
  if [ -f $2 ]; then
    echo "Target file already exists: $2"
    return
  fi
  if [ -d $2 ]; then
    echo "Target directory already exists: $2"
    return
  fi
  ln -s "$HOME/dotfiles/$1" $2
  echo "Link created: $HOME/dotfiles/$1 -> $2"
}

link_dotfiles() {
  create_link config/neofetch/ ~/.config/neofetch

  create_link config/fish/ ~/.config/fish

  create_link config/nvim/ ~/.config/nvim

  create_link config2/nvim/user/ ~/.config/nvim/lua/user

  create_link config/kitty/ ~/.config/kitty

  create_link config/feh/ ~/.config/feh

  create_link config/wezterm/ ~/.config/wezterm

  create_link config/zsh/.zshrc ~/.zshrc

  create_link config/zsh/.zprofile ~/.zprofile

  create_link config/zsh/.zimrc ~/.zimrc

  create_link config/zsh/.p10k.zsh ~/.p10k.zsh

  create_link config/starship.toml ~/.config/starship.toml

  create_link user/.bash_profile ~/.bash_profile

  create_link user/.bashrc ~/.bashrc

  create_link user/.gitconfig ~/.gitconfig
}

link_global() {
  sudo mkdir -p /opt/scripts
  sudo cp -rf $HOME/dotfiles/scripts/* /opt/scripts

  sudo cp -f $HOME/dotfiles/systemd/boot-script.service /etc/systemd/system/boot-script.service
  sudo cp -f $HOME/dotfiles/systemd/clash-for-linux.service /etc/systemd/system/clash-for-linux.service
}

ask_confirm() {
  if [ "$2" = "Y" ]; then
    echo -n "$1 [Y/n] "
    DEFAULT="Y"
  else
    echo -n "$1 [y/N] "
    DEFAULT="N"
  fi
  read -r ANSWER
  ANSWER="${ANSWER:-$DEFAULT}"
  ANSWER="${ANSWER^^}"
  if [ "$ANSWER" == "Y" ]; then
    return 0
  else
    return 1
  fi
}

if ask_confirm "Do you want to install dotfiles for root?" "Y"; then
  link_dotfiles
fi

if ask_confirm "Do you want to install global scripts and service?" "N"; then
  link_global
fi
