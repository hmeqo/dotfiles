if [[ -x "$(command -v atuin)" ]]; then
  set +o history
  unset HISTFILE
  eval "$(zoxide init atuin)"
fi
