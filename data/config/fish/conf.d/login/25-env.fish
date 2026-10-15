function has_path
    contains $argv[1] $PATH
end

function add_path
    has_path $argv[1] || set PATH $argv[1] $PATH
end

add_path "$HOME/.local/bin"

set -gx EDITOR nvim

# Pager
if command -sq bat
    set -gx PAGER 'bat --style=grid,numbers'
end
