#!/usr/bin/bash

init_venv() {
  if command -v uv >/dev/null; then
    uv sync --frozen
  else
    python_version=$(python --version)
    if ! [[ $python_version =~ ^Python\ 3\.1[1-9]+\.[0-9]+$ ]]; then
      echo "Unsupported Python version: $python_version"
    fi

    python -m venv .venv
    source .venv/bin/activate
    pip install -r requirements.txt
  fi
}

install_crates() {
  cargo build --release
  cargo install --path crates/* --root './tools' --force -q
}

replace_userhome_string() {
  if command -v rg >/dev/null; then
    files=$(rg -l '/home/hmeqo' data/{config,local})
  else
    files=$(grep -l '/home/hmeqo' -r data/{config,local})
  fi
  if [[ -n "$files" ]]; then
    echo "$files" | sed 's/.*/"&"/' | xargs sed -i "s#/home/hmeqo#$HOME#g"
  fi
}

if [[ $1 = "init" ]]; then
  replace_userhome_string

  init_venv

  install_crates
elif [[ $1 = "tui" ]]; then
  source .venv/bin/activate
  confsync tui
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
