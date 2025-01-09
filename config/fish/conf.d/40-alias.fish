if command -sq exa
    alias ls 'exa --icons -s=type'
    alias lsa 'ls -A'
    alias l 'ls -lh'
    alias ll 'ls -Alh'
    alias la 'ls -alh'
    alias lt 'ls -lTah'
else
    alias ls 'ls --color=auto -s=type'
    alias lsa 'ls -A'
    alias l 'ls -lh'
    alias ll 'ls -Alh'
    alias la 'ls -alh'
    alias lt 'tree -pCsh'
end

if command -sq bat
    alias batp 'bat --paging=always'
    alias cat 'bat -pp'
    alias ccat '/usr/bin/cat'
end

if command -sq tmux
    alias tt 'tmux attach || tmux'
    alias tn 'tmux new'
    alias tl 'tmux ls'
    alias ta 'tmux attach -t'
    alias tk 'tmux kill-session -t'
end

if command -sq dust
    alias du 'dust -r -d1'
else
    alias du 'du -d1'
end

if command -sq duf
    alias df 'duf --only=local,fuse'
end

alias color_test 'curl https://gist.githubusercontent.com/lilydjwg/fdeaf79e921c2f413f44b6f613f6ad53/raw/94d8b2be62657e96488038b0e547e3009ed87d40/colors.py | python'
