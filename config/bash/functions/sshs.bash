sshs() {
    host=$(grep "Host " <~/.ssh/config | awk '{print $2}' | fzf --layout=reverse --height 12)
    if [[ "$host" != "" ]]; then
        ssh "$host"
    fi
}
