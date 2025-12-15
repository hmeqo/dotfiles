set -gx EDITOR nvim

# Pager
if command -sq bat
    set -gx PAGER 'bat --style=grid,numbers'
end
