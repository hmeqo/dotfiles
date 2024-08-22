if command -v uv > /dev/null; then
  uv venv
  source .venv/bin/activate
  uv pip install -r requirements.txt
else
  python -m venv .venv
  source .venv/bin/activate
  pip install -r requirements.txt
fi

rg -l '/home/hmeqo' {config,local} | sed 's/.*/"&"/' | xargs sed -i "s#/home/hmeqo#$HOME#g"

confsync tui
