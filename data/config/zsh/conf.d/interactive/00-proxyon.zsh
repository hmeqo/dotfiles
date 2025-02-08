. "$DOTFILES/data/config/bash/conf.d/interactive/00-proxyon.bash"

compdef _proxyon proxyon
_proxyon() {
  _arguments '1:Proxy tool:(tor glider clash clash_verge clash_verge_rev clash_rev v2raya v2raya_global address:port)'
}
