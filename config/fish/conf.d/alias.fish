function fastfetch
    bash -c 'echo && pyfiglet -s -f ansi_shadow $(fastfetch -s os --format json | jq -r \'.[0].result.name\') | lolcat && fastfetch -l none --config examples/10'
end

if type -q exa
    alias ls='exa --icons -s type'
    alias lsa='ls -A'
    alias l='ls -lh'
    alias ll='ls -Alh'
    alias la='ls -alh'
    alias lt='ls -lTah'
else
    alias ls='ls --color=auto -s type'
    alias lsa='ls -A'
    alias l='ls -lh'
    alias ll='ls -Alh'
    alias la='ls -alh'
    alias lt='tree -pCsh'
end

if type -q bat
    alias cat='bat -pp'
    alias ccat='/usr/bin/cat'
end

if type -q tmux
    alias tt='tmux attach || tmux'
    alias tn='tmux new'
    alias tl='tmux ls'
    alias ta='tmux attach -t'
    alias tk='tmux kill-session -t'
end

alias va='source .venv/bin/activate.fish'

alias color_test='curl https://gist.githubusercontent.com/lilydjwg/fdeaf79e921c2f413f44b6f613f6ad53/raw/94d8b2be62657e96488038b0e547e3009ed87d40/colors.py | python'
