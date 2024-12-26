alias grep='grep --color=auto'

if command -v exa >/dev/null; then
    alias ls='exa --icons --sort=type'
    alias lsa='ls -A'
    alias l='ls -lh'
    alias ll='ls -Alh'
    alias la='ls -alh'
    alias lt='ls -lTah'
else
    alias ls='ls --color=auto --sort=type'
    alias lsa='ls -A'
    alias l='ls -lh'
    alias ll='ls -Alh'
    alias la='ls -alh'
    alias lt='tree -pCsh'
fi

if command -v bat >/dev/null; then
    alias batp='bat --paging=always'
    alias cat='bat -pp'
    alias ccat='/usr/bin/cat'
fi

if command -v tmux >/dev/null; then
    alias tt='tmux attach || tmux'
    alias tn='tmux new'
    alias tl='tmux ls'
    alias ta='tmux attach -t'
    alias tk='tmux kill-session -t'
fi

if command -v duf >/dev/null; then
    alias df='duf --only=local,fuse'
fi

# alias color_test='curl https://gist.githubusercontent.com/lilydjwg/fdeaf79e921c2f413f44b6f613f6ad53/raw/94d8b2be62657e96488038b0e547e3009ed87d40/colors.py | python'
