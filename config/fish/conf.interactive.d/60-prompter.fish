set -q prompter || set prompter starship
not type -q "$prompter" || $prompter init fish | source
