export EDITOR=nvim

# Pager
if command -v bat >/dev/null; then
    export PAGER='bat --style=grid,numbers'
fi
