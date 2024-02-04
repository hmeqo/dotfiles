#
# ~/.bashrc
#

[[ $- != *i* ]] && return

# Python - pyenv
if command -v pyenv >/dev/null; then
  eval "$(pyenv init -)"
fi

alias grep='grep --color=auto'

# ls
if command -v exa >/dev/null; then
  alias ls='exa --icons'
  alias ll='exa -Alh --icons'
  alias l='exa -Alh --icons'
  alias lst='exa -lTah --icons'

  alias tree="exa -T"
else
  alias ls='ls --color=auto'
  alias ll='ls -Alh'
  alias l='ls -Alh'
  alias lst='tree -pCsh'
fi

# tmux
if command -v tmux >/dev/null; then
  alias tt='tmux attach || tmux'
  alias tn='tmux new'
  alias tl='tmux ls'
  alias ta='tmux attach -t'
  alias tk='tmux kill-session -t'
fi

if command -v bat >/dev/null; then
  alias cat="bat -pp"
  alias ccat=/usr/bin/cat
fi

PS1='[\u@\h \W]\$ '

. ~/dotfiles/config/bash/proxy.sh

if [ -f ~/dotfiles/user/bashrc.sh ]; then
  . ~/dotfiles/user/bashrc.sh
fi
