init_venv() {
  if command -v uv >/dev/null; then
    uv venv
    source .venv/bin/activate
    if ! (uv pip install -r requirements.txt); then
      echo "Failed to install requirements. If this is a version issue, try setting UV_PYTHON or create a .python-version."
      exit
    fi
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
  # files=$(rg -l '/home/hmeqo' {config,local})
  files=$(find {config,local} -type f -print0 | xargs -0 grep -l '/home/hmeqo')
  echo "$files" | sed 's/.*/"&"/' | xargs sed -i "s#/home/hmeqo#$HOME#g"
}

init_venv
replace_userhome_string

confsync tui
