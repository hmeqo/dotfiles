set -l loadlist \
    "$DOTFILES/config/fish/conf.opt.d/login.fish" \
    "$DOTFILES/config/fish/conf.opt.d/env.fish" \
    "$DOTFILES/user/fish/config.fish"

not test -f "$DOTFILES/user/fish/loader/login.fish" || . "$DOTFILES/user/fish/loader/login.fish"

for fp in $loadlist
    not test -f "$fp" || source "$fp"
end
