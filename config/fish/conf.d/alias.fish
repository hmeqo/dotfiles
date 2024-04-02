alias cp="cp -i"

if command -q exa
    alias ls='exa --icons'
    alias ll='exa -alh --icons'
    alias l='exa -alh --icons'
    alias lst='exa -lTah --icons'
else
    alias ls='ls --color=auto'
    alias ll='ls -alh'
    alias l='ls -alh'
    alias lst='tree -pCsh'
end

if command -q bat
    alias cat="bat -pp"
    alias ccat /usr/bin/cat
end

if command -q tmux
    alias tt='tmux attach || tmux'
    alias tn='tmux new'
    alias tl='tmux ls'
    alias ta='tmux attach -t'
    alias tk='tmux kill-session -t'
end

alias color_test "curl https://gist.githubusercontent.com/lilydjwg/fdeaf79e921c2f413f44b6f613f6ad53/raw/94d8b2be62657e96488038b0e547e3009ed87d40/colors.py | python"
