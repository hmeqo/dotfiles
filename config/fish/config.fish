if status is-login
  . ~/dotfiles/config/fish/env.fish
  if test -f /etc/profile.d/greeting.sh
    bash /etc/profile.d/greeting.sh
  end
end

if status is-interactive
  set fish_greeting ""
  set fish_cursor_insert line
  set fish_cursor_replace_one underscore
  set fish_cursor_replace underscore

  command -q starship && starship init fish | source
  zoxide init fish | source
end

[ -f ~/dotfiles/user/fish/config.fish ] && . ~/dotfiles/user/fish/config.fish || true
