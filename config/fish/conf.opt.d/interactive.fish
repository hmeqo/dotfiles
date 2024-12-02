set fish_greeting ""
set fish_vi_force_cursor 1
set fish_cursor_insert line
set fish_cursor_replace underscore
set fish_cursor_replace_one underscore

not type -q zoxide || zoxide init fish | source

set -q prompter || set prompter starship
not type -q "$prompter" || $prompter init fish | source
