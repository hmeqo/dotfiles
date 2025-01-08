set -q DOTFILES || set -gx DOTFILES $HOME/.config/dotfiles

# Define the functions and conf.d directories
set confd_dirs "$DOTFILES/config/fish/conf.d" "$DOTFILES/user/fish/conf.d"
if status is-login
    set confd_dirs $confd_dirs "$DOTFILES/config/fish/conf.d/login" "$DOTFILES/user/fish/conf.d/login"
end
if status is-interactive
    set confd_dirs $confd_dirs "$DOTFILES/config/fish/conf.d/interactive" "$DOTFILES/user/fish/conf.d/interactive"
end
# Load the configuration
for file in ("$DOTFILES/utils/collectconf" $confd_dirs)
    source "$file"
end
set -e confd_dirs
