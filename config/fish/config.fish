set -q DOTFILES || set -gx DOTFILES $HOME/.config/dotfiles

# Define the functions and conf.d directories
set -l confd_dirs "$DOTFILES/config/fish/conf.d" "$DOTFILES/user/fish/conf.d"
if status is-login
    set confd_dirs $confd_dirs "$DOTFILES/config/fish/conf.d/login" "$DOTFILES/user/fish/conf.d/login"
end
if status is-interactive
    set confd_dirs $confd_dirs "$DOTFILES/config/fish/conf.d/interactive" "$DOTFILES/user/fish/conf.d/interactive"
end
# Load the configuration
source "$DOTFILES/utils/collectconf.fish"
for file in (collectconf $confd_dirs)
    source "$file"
end
# for file in (
#     for dir in $confd_dirs
#         if test -d "$dir"
#             for file in "$dir"/*
#                 if test -f "$file"
#                     echo "$file"
#                 end
#             end
#         end
#     end | sort -t / -k 1
# )
#     source "$file"
# end
set -e confd_dirs
