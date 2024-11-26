loadlist=(
    "$DOTFILES/config/zsh/conf.opt.d/interactive.zsh"
    "$DOTFILES/config/zsh/conf.opt.d/alias.zsh"
    "$DOTFILES/user/zsh/zshrc"
)

[[ ! -f "$DOTFILES/user/zsh/loader/interactive.zsh" ]] || . "$DOTFILES/user/zsh/loader/interactive.zsh"

for fp in "${loadlist[@]}"; do
    [[ ! -f "$fp" ]] || . "$fp"
done
