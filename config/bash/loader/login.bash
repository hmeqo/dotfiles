loadlist=(
    "$DOTFILES/config/bash/conf.opt.d/login.bash"
    "$DOTFILES/config/bash/conf.opt.d/env.bash"
    "$DOTFILES/user/bash/bash_profile"
)

[[ ! -f "$DOTFILES/user/bash/loader/login.bash" ]] || . "$DOTFILES/user/bash/loader/login.bash"

for fp in "${loadlist[@]}"; do
    [[ ! -f "$fp" ]] || . "$fp"
done
