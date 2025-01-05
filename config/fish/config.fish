set -q DOTFILES || set -gx DOTFILES $HOME/.config/dotfiles
not status is-login || for file in ("$DOTFILES/utils/loadconf.py" "$DOTFILES/config/fish/conf.login.d" "$DOTFILES/user/fish/conf.login.d")
    source "$file"
end
not status is-interactive || for file in ("$DOTFILES/utils/loadconf.py" "$DOTFILES/config/fish/conf.interactive.d" "$DOTFILES/user/fish/conf.interactive.d")
    source "$file"
end
