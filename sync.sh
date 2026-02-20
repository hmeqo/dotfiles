#!/usr/bin/bash

install_crates() {
  cargo build --release
  cargo install --path crates/* --root './tools' --force -q
}

replace_userhome_string() {
  files=$(rg -l '/home/hmeqo' data/{config,local})
  if [[ -n "$files" ]]; then
    echo "$files" | sed 's/.*/"&"/' | xargs sed -i "s#/home/hmeqo#$HOME#g"
  fi
}

if [[ $1 = "init" ]]; then
  replace_userhome_string

  install_crates
elif [[ $1 = "tui" ]]; then
  uvx --from simple-config-sync confsync tui
elif [[ $1 = "install-fakehome" ]]; then
  ./tools/share/fakehome/sync.sh
elif [[ $1 = "uninstall-fakehome" ]]; then
  ./tools/share/fakehome/uninstall.sh
else
  echo "Usage: $0 [init|tui|install-fakehome|uninstall-fakehome]"
  echo "    init: Initialize dotfiles, you need run it every time after pull"
  echo "    tui: Run confsync tui"
  echo "    install-fakehome: Install fakehome"
  echo "    uninstall-fakehome: Uninstall fakehome"
fi
