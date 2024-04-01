for file in ~/dotfiles/config/bash/conf.d/*; do
    . $file
done
[[ -f ~/dotfiles/user/zsh/.zprofile ]] && . ~/dotfiles/user/zsh/.zprofile || true
