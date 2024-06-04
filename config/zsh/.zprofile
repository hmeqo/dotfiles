autoload -Uz compinit
compinit

. ~/dotfiles/config/zsh/load_bash_profile.zsh
[[ -f ~/dotfiles/user/zsh/.zprofile ]] && . ~/dotfiles/user/zsh/.zprofile || true
