loadlist=(
    "$DOTFILES/config/zsh/conf.opt.d/login.zsh"
    "$DOTFILES/config/zsh/conf.opt.d/env.zsh"
    "$DOTFILES/user/zsh/zprofile"
)

[[ ! -f "$DOTFILES/user/zsh/loader/login.zsh" ]] || . "$DOTFILES/user/zsh/loader/login.zsh"

for fp in "${loadlist[@]}"; do
    [[ ! -f "$fp" ]] || . "$fp"
done
