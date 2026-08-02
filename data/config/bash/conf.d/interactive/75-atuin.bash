if [[ -x "$(command -v atuin)" ]]; then
  # set +o history
  # unset HISTFILE
  eval "$(atuin init bash --disable-up-arrow)"
fi
