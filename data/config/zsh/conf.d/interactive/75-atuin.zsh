if [[ -x "$(command -v atuin)" ]]; then
  unset HISTFILE
  unset HISTSIZE
  unset SAVEHIST
  eval "$(atuin init zsh)"
fi
