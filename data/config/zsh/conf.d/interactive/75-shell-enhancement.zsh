## command history
if [[ -x "$(command -v atuin)" ]]; then
  # unset HISTFILE
  # unset HISTSIZE
  # unset SAVEHIST
  eval "$(atuin init zsh --disable-up-arrow)"
fi

## cd
[[ ! -x "$(command -v zoxide)" ]] || eval "$(zoxide init zsh)"

## prompt
prompter="${prompter:-starship}"
[[ ! -x "$(command -v "$prompter")" ]] || eval "$($prompter init zsh)"
