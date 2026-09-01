## command history
if [[ -x "$(command -v atuin)" ]]; then
  # set +o history
  # unset HISTFILE
  eval "$(atuin init bash --disable-up-arrow)"
fi

## cd
[[ ! -x "$(command -v zoxide)" ]] || eval "$(zoxide init bash)"

## prompt
prompter="${prompter:-starship}"
[[ ! -x "$(command -v "$prompter")" ]] || eval "$($prompter init bash)"
