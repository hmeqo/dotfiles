# proxyon/proxyoff — evaluate the proxy scripts so env changes apply to this shell.
proxyon() {
    local out
    out="$(command proxyon "$@")" || return
    eval "$out"
}
proxyoff() {
    local out
    out="$(command proxyoff "$@")" || return
    eval "$out"
}
