alias cp="cp -i"

alias grep='grep --color=auto'

# ls
if command -v exa >/dev/null; then
  alias ls='exa --icons'
  alias ll='exa -Alh --icons'
  alias l='exa -Alh --icons'
  alias lst='exa -lTah --icons'
else
  alias ls='ls --color=auto'
  alias ll='ls -Alh'
  alias l='ls -Alh'
  alias lst='tree -pCsh'
fi

if command -v bat >/dev/null; then
  alias cat='bat -pp'
  alias ccat='/usr/bin/cat'
fi

# tmux
if command -v tmux >/dev/null; then
  alias tt='tmux attach || tmux'
  alias tn='tmux new'
  alias tl='tmux ls'
  alias ta='tmux attach -t'
  alias tk='tmux kill-session -t'
fi

alias color_test='curl https://gist.githubusercontent.com/lilydjwg/fdeaf79e921c2f413f44b6f613f6ad53/raw/94d8b2be62657e96488038b0e547e3009ed87d40/colors.py | python'
