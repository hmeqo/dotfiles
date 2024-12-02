[[ ! -x "$(command -v zoxide)" ]] || eval $(zoxide init zsh)

prompter="${prompter:-starship}"
[[ ! -x "$(command -v "$prompter")" ]] || eval "$($prompter init zsh)"
