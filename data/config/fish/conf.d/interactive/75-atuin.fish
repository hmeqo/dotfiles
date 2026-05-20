if type -q atuin
    set -U fish_history ""
    atuin init fish | source
end
