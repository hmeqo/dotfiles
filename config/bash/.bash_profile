#
# ~/.bash_profile
#

. ~/dotfiles/config/bash/conf.d/env.bash

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -f ~/dotfiles/user/bash/.bash_profile ]] && . ~/dotfiles/user/bash/.bash_profile || true
[[ -f ~/dotfiles/user/bash/.bashrc ]] && . ~/dotfiles/user/bash/.bashrc || true
