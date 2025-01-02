init_venv() {
  if command -v uv >/dev/null; then
    uv sync
    source .venv/bin/activate
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

replace_userhome_string() {
  if command -v rg >/dev/null; then
    files=$(rg -l '/home/hmeqo' {config,local})
  else
    files=$(grep -l '/home/hmeqo' -r {config,local})
  fi
  if [[ -n "$files" ]]; then
    echo "$files" | sed 's/.*/"&"/' | xargs sed -i "s#/home/hmeqo#$HOME#g"
  fi
}

init_venv
replace_userhome_string

confsync tui
