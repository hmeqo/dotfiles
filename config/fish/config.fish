set fish_greeting ""
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore

# Python - pyenv
command -q pyenv && pyenv init - | source

starship init fish | source
