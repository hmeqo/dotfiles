set -q prompter || set prompter starship
not command -sq "$prompter" || $prompter init fish | source
