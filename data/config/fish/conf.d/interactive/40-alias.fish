if command -sq exa
    alias __ls 'exa --icons -s=type'
    alias __ll '__ls -lh'
    alias lt 'ls -lTah'
else
    alias __ls 'ls --color=auto -s=type'
    alias __ll '__ls -lh'
    alias lt 'tree -pCsh'
end
alias ls '__ls -A'
alias lsa '__ls -a'
alias lsh __ls
alias ll '__ll -A'
alias lla '__ll -a'
alias llh __ll

if command -sq bat
    alias batp 'bat --paging=always'
    alias cat 'bat -pp'
    alias ccat /usr/bin/cat
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
