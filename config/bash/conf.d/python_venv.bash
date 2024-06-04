VENV_PATHS=(
  ".venv"
  "venv"
)

for VENV_PATH in "${VENV_PATHS[@]}"; do
  if [[ -d "$VENV_PATH" ]]; then
    source "$VENV_PATH/bin/activate"
    break
  fi
done
