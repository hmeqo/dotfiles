# prompter=oh-my-posh

## mise
if command -v mise >/dev/null; then
    eval "$(mise activate bash)"
fi

## pyenv
if command -v pyenv >/dev/null; then
    eval "$(pyenv init -)"
fi
