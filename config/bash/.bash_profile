#
# ~/.bash_profile
#

. ~/dotfiles/config/bash/load_config.bash
. ~/dotfiles/config/bash/env.bash
# User Config
[[ -f ~/dotfiles/user/bash/.bash_profile ]] && . ~/dotfiles/user/bash/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc
