set -l loadlist \
    "$DOTFILES/config/fish/conf.opt.d/interactive.fish" \
    "$DOTFILES/config/fish/conf.opt.d/alias.fish" \
    "$DOTFILES/user/fish/config.fish"

not test -f "$DOTFILES/user/fish/loader/interactive.fish" || . "$DOTFILES/user/fish/loader/interactive.fish"

for fp in $loadlist
    not test -f "$fp" || source "$fp"
end
