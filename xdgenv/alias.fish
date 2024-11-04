# wget
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'

# yarn
mkdir -p ~/.config/yarn
test -f "$XDG_CONFIG_HOME/yarn/config" || touch "$XDG_CONFIG_HOME/yarn/config"
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
