set fish_greeting ""
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

command -q starship && starship init fish | source
zoxide init fish | source

[ -f ~/dotfiles/user/fish/config.fish ]; and . ~/dotfiles/user/fish/config.fish; or true
