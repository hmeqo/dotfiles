#!/usr/bin/env bash

set fish_greeting ""

# editor
export EDITOR="nvim"
export VISUAL="nvim"

# Python
command -q pyenv && pyenv init - | source

fish_add_path ~/.cargo/bin/
fish_add_path ~/.local/share/nvim/mason/bin/
fish_add_path ~/.local/bin/
fish_add_path ~/dotfiles/scripts/

fish_vi_key_bindings
set -g fish_vi_force_cursor 1
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore

# starship init fish | source

set -x _ZO_ECHO 1
zoxide init fish | source

starship init fish | source
