source ~/.config/dotfiles/xdgenv/alias.fish

if status is-interactive
  set -gx SSH_ASKPASS /usr/bin/ksshaskpass
  set -gx SSH_ASKPASS_REQUIRE prefer
end
