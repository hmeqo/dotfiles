function proxyon
    switch $argv[1]
        case --help
            echo "Supported types: glider, clash, clash_verge, clash_verge_rev, clash_rev, v2raya, v2raya_global, <addr:port>"
        case tor
            set http_url "http://127.0.0.1:9050"
            set socks_url "socks://127.0.0.1:9050"
        case glider
            set http_url "http://127.0.0.1:8443"
            set socks_url "socks://127.0.0.1:8443"
        case clash clash_verge
            set http_url "http://127.0.0.1:7890"
            set socks_url "socks://127.0.0.1:7891"
        case clash_verge_rev clash_rev
            set http_url "http://127.0.0.1:7897"
            set socks_url "socks://127.0.0.1:7898"
        case v2raya
            set http_url "http://127.0.0.1:20172"
            set socks_url "socks://127.0.0.1:20170"
        case v2raya_global
            set http_url "http://127.0.0.1:20171"
            set socks_url "socks://127.0.0.1:20170"
        case '*'
            if test -z "$argv[1]"
                echo "Usage: proxyon <type>"
                return 1
            end
            set -g http_url "http://$argv[1]"
            set -g socks_url "socks://$argv[1]"
    end

    set -gx HTTP_PROXY $http_url
    set -gx HTTPS_PROXY $http_url
    set -gx FTP_PROXY $http_url
    set -gx SOCKS_PROXY $socks_url
    set -gx NO_PROXY 'localhost,127.0.0.1'
    return 0
end

complete -c proxyon -f -d 'Proxy tool' -a 'tor glider clash clash_verge clash_verge_rev clash_rev v2raya v2raya_global' -n __fish_use_subcommand
complete -c proxyon -f -d 'Proxy address' -a 'address:port' -n __fish_use_subcommand
