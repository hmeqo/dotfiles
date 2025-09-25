set -q DOTFILES || set -gx DOTFILES $HOME/.local/opt/dotfiles

# Define the functions and conf.d directories
set -l conf_dirs "$DOTFILES/data/config/fish/conf.d" "$DOTFILES/data/user/fish/conf.d"
if status is-login
    set conf_dirs $conf_dirs "$DOTFILES/data/config/fish/conf.d/login" "$DOTFILES/data/user/fish/conf.d/login"
end
if status is-interactive
    set conf_dirs $conf_dirs "$DOTFILES/data/config/fish/conf.d/interactive" "$DOTFILES/data/user/fish/conf.d/interactive"
end
# Load the configuration
for file in ("$DOTFILES/tools/bin/collectconf" $conf_dirs)
    source "$file"
end
set -e conf_dirs
