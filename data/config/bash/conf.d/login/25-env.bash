has_path() {
    [[ ":$PATH:" = *":$1:"* ]]
}

add_path() {
    has_path "$1" || PATH="$1:$PATH"
}

add_path "$HOME/.local/bin"

export EDITOR=nvim

# Pager
if command -v bat >/dev/null; then
    export PAGER='bat --style=grid,numbers'
fi
