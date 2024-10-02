function sshs
    set host (grep "Host " < ~/.ssh/config | awk '{print $2}' | fzf --layout=reverse --height 12)
    if test -n "$host"
        ssh $host
    end
end
