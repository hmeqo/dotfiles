alias cp="cp -i"

if command -q batcat
    alias bat=batcat
    alias cat="batcat -pp"
    alias ccat /usr/bin/cat
end
if command -q bat
    alias cat="bat -pp"
    alias ccat /usr/bin/cat
end

if command -q exa
  alias ls='exa --icons'
  alias ll='exa -lh --icons'
  alias la='exa -Alh --icons'
  alias lsa='exa -alh --icons'
  alias lst='exa -lTah --icons'

  alias tree="exa -T"
else
  alias ls='ls --color=auto'
  alias ll='ls -lh'
  alias la='ls -Alh'
  alias lsa='ls -alh'
  alias lst='tree -pCsh'
end

if command -q tmux
  # tmux
  alias tt='tmux a || tn'
  alias tn='tmux new'
  alias tl='tmux ls'
  alias ta='tmux attach -t'
  alias tk='tmux kill-session -t'
end

alias color_test "curl https://gist.githubusercontent.com/lilydjwg/fdeaf79e921c2f413f44b6f613f6ad53/raw/94d8b2be62657e96488038b0e547e3009ed87d40/colors.py | python"
