for file in ~/.config/dotfiles/config/bash/conf.d/*; do
  if [[ -f $file ]]; then
    . $file
  fi
done
for file in ~/.config/dotfiles/config/bash/functions/*; do
  if [[ -f $file ]]; then
    . $file
  fi
done
