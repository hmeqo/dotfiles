# set prompter oh-my-posh

## mise
if command -sq mise
    mise activate fish | source
end

## pyenv
if command -sq pyenv
    pyenv init - | source
end
