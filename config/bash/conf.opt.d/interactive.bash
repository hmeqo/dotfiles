prompter="${prompter:-starship}"
[[ ! -x "$(command -v "$prompter")" ]] || eval "$($prompter init bash)"

[[ ! -f /usr/share/blesh/ble.sh ]] || . /usr/share/blesh/ble.sh
