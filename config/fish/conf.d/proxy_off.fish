function proxy_off
  set -x HTTP_PROXY
  set -x HTTPS_PROXY
  set -x SOCKS_PROXY
  set -x NO_PROXY
end
