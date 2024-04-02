for file in ~/dotfiles/config/bash/conf.d/*; do
    if [[ -f $file ]]; then
        . $file
    fi
done

_prime_priority() {
    if (( CURRENT == 2 )); then
        local -a commands
        commands=(
            'nvidia:Description for nvidia'
        )
        _describe 'command' commands
    fi
}

_proxy_on() {
    if (( CURRENT == 2 )); then
        local -a commands
        commands=(
            'clash:Description for clash'
            'clash_verge:Description for clash_verge'
            'clash_verge_rev:Description for clash_verge_rev'
            'clash_rev:Description for clash_rev'
            'v2raya:Description for v2raya'
            'v2raya_global:Description for v2raya_global'
        )
        _describe 'command' commands
    fi
}

compdef _prime_priority prime_priority
compdef _proxy_on proxy_on
