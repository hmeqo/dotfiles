function proxy_on
    switch $argv[1]
        case clash clash_verge
            set -gx http_proxy 'http://127.0.0.1:7890'
            set -gx https_proxy 'http://127.0.0.1:7890'
            set -gx socks_proxy 'socks://127.0.0.1:7891'
        case clash_verge_rev clash_rev
            set -gx http_proxy 'http://127.0.0.1:7897'
            set -gx https_proxy 'http://127.0.0.1:7897'
            set -gx socks_proxy 'socks://127.0.0.1:7898'
        case v2raya
            set -gx http_proxy 'http://127.0.0.1:20172'
            set -gx https_proxy 'http://127.0.0.1:20172'
            set -gx socks_proxy 'socks://127.0.0.1:20170'
        case v2raya_global
            set -gx http_proxy 'http://127.0.0.1:20171'
            set -gx https_proxy 'http://127.0.0.1:20171'
            set -gx socks_proxy 'socks://127.0.0.1:20170'
        case '*'
            echo "Unsupported proxy type: $argv[1]"
            return 1
    end
    set -gx no_proxy 'localhost,127.0.0.1'
    return 0
end
