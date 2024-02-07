#
# ~/.bashrc
#

[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

for file in ~/dotfiles/config/bash/conf.d/*; do
  . $file
done
[[ -f ~/dotfiles/user/bash/.bashrc ]] && . ~/dotfiles/user/bash/.bashrc || true
