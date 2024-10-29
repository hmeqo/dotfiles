for file in ~/.config/dotfiles/config/zsh/conf.d/*; do
  if [[ -f $file ]]; then
    . $file
  fi
done
for file in ~/.config/dotfiles/config/zsh/functions/*; do
  if [[ -f $file ]]; then
    . $file
  fi
done
