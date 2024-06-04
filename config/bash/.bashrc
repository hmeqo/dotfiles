#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

. ~/dotfiles/config/bash/load_config.bash
# User Config
[[ -f ~/dotfiles/user/bash/.bashrc ]] && . ~/dotfiles/user/bash/.bashrc
