. "$DOTFILES/config/bash/loader/config.bash"

_proxy_on() {
    if ((CURRENT == 2)); then
        local -a commands
        commands=(
            'clash:Set proxy to Clash'
            'clash_verge:Set proxy to Clash Verge'
            'clash_verge_rev:Set proxy to Clash Verge Rev'
            'clash_rev:Set proxy to Clash Verge Rev'
            'v2raya:Set proxy to V2RayA'
            'v2raya_global:Set proxy to V2RayA Global'
        )
        _describe 'command' commands
    fi
}

compdef _proxy_on proxy_on

# for file in "$DOTFILES/config/zsh/conf.d/"*; do
#   [[ ! -f "$file" ]] || . "$file"
# done
# for file in "$DOTFILES/config/zsh/functions/"*; do
#   [[ ! -f "$file" ]] || . "$file"
# done
