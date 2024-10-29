init_venv() {
  if command -v uv >/dev/null; then
    uv venv
    source .venv/bin/activate
    uv pip install -r requirements.txt
  else
    python -m venv .venv
    source .venv/bin/activate
    pip install -r requirements.txt
  fi
}

sub_home() {
  # files=$(rg -l '/home/hmeqo' {config,local})
  files=$(grep -l '/home/hmeqo' $(find {config,local} -type f))
  echo "$files" | sed 's/.*/"&"/' | xargs sed -i "s#/home/hmeqo#$HOME#g"

  files=$(grep -l '/home/hmeqo/.local/share/fakehome' $(find {config,local} -type f))
  echo "$files" | sed 's/.*/"&"/' | xargs sed -i "s#/home/hmeqo#$HOME#g"
}

init_venv
sub_home

confsync tui
