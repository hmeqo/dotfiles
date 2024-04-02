autoload -Uz compinit
compinit

for file in ~/dotfiles/config/zsh/conf.d/*; do
    if [[ -f $file ]]; then
        . $file
    fi
done
[[ -f ~/dotfiles/user/zsh/.zprofile ]] && . ~/dotfiles/user/zsh/.zprofile || true
