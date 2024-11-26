loadlist=(
    "$DOTFILES/config/bash/conf.opt.d/interactive.bash"
    "$DOTFILES/config/bash/conf.opt.d/alias.bash"
    "$DOTFILES/user/bash/bashrc"
)

[[ ! -f "$DOTFILES/user/bash/loader/interactive.bash" ]] || . "$DOTFILES/user/bash/loader/interactive.bash"

for fp in "${loadlist[@]}"; do
    [[ ! -f "$fp" ]] || . "$fp"
done
