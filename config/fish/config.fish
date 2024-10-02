set -l dotfiles ~/.config/dotfiles

if status is-login
    if test -f $dotfiles/user/fish/env.fish
        source $dotfiles/user/fish/env.fish
    else
        source $dotfiles/config/fish/env.fish
    end

    if status is-interactive
        [ ! -f /etc/profile.d/greeting.sh ] || bash /etc/profile.d/greeting.sh
    end
end

if status is-interactive
    set fish_greeting ""
    set fish_vi_force_cursor 1
    set fish_cursor_insert line
    set fish_cursor_replace underscore
    set fish_cursor_replace_one underscore

    not type -q starship || starship init fish | source
    not type -q zoxide || zoxide init fish | source
end

[ ! -f $dotfiles/user/fish/config.fish ] || source $dotfiles/user/fish/config.fish
