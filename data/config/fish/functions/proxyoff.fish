function proxyoff
    set -e HTTP_PROXY
    set -e HTTPS_PROXY
    set -e FTP_PROXY
    set -e SOCKS_PROXY
    set -e NO_PROXY
end
