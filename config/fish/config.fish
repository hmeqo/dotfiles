set -q DOTFILES || set -gx DOTFILES ~/.config/dotfiles

not status is-login || source "$DOTFILES/config/fish/loader/login.fish"
not status is-interactive || source "$DOTFILES/config/fish/loader/interactive.fish"
