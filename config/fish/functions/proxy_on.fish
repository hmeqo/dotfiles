function proxy_on
    switch $argv[1]
        case clash clash_verge
            set -l http_url 'http://127.0.0.1:7890'
            set -l socks_url 'socks://127.0.0.1:7891'
        case clash_verge_rev clash_rev
            set -l http_url 'http://127.0.0.1:7897'
            set -l socks_url 'socks://127.0.0.1:7898'
        case v2raya
            set -l http_url 'http://127.0.0.1:20172'
            set -l socks_url 'socks://127.0.0.1:20170'
        case v2raya_global
            set -l http_url 'http://127.0.0.1:20171'
            set -l socks_url 'socks://127.0.0.1:20170'
        case '*'
            echo "Unsupported proxy type: $argv[1]"
            return 1
    end
    set -gx http_proxy "$http_url"
    set -gx https_proxy "$http_url"
    set -gx ftp_proxy "$http_url"
    set -gx socks_proxy "$socks_url"
    set -gx no_proxy 'localhost,127.0.0.1'
    return 0
end

function __proxy_on_complete
    set -l line (commandline -o)
    if [ (count $line) -eq 1 ]
        echo -e "clash\tSet proxy to Clash"
        echo -e "clash_verge\tSet proxy to Clash Verge"
        echo -e "clash_verge_rev\tSet proxy to Clash Verge Rev"
        echo -e "clash_rev\tSet proxy to Clash Verge Rev"
        echo -e "v2raya\tSet proxy to V2RayA"
        echo -e "v2raya_global\tSet proxy to V2RayA Global"
    end
end

complete -f -c proxy_on -a '(__proxy_on_complete)'
