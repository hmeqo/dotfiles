. ~/.config/dotfiles/config/zsh/load_bash_config.bash

if [[ -f ~/.config/dotfiles/user/zsh/env.zsh ]]; then
  . ~/.config/dotfiles/user/zsh/env.zsh
else
  . ~/.config/dotfiles/config/zsh/env.bash
fi
