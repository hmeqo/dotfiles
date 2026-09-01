## command history
if command -sq atuin
    # set -U fish_history ""
    atuin init fish --disable-up-arrow | source
end

## cd
not command -sq zoxide || zoxide init fish | source

## prompt
set -q prompter || set prompter starship
not command -sq "$prompter" || $prompter init fish | source
