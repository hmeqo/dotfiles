function proxy_on
    switch $argv[1]
        case "clash"
            set -gx HTTP_PROXY 'http://127.0.0.1:7890'
            set -gx HTTPS_PROXY 'http://127.0.0.1:7890'
            set -gx SOCKS_PROXY 'http://127.0.0.1:7891'
        case "v2raya"
            set -gx HTTP_PROXY 'http://127.0.0.1:20172'
            set -gx HTTPS_PROXY 'http://127.0.0.1:20172'
            set -gx SOCKS_PROXY 'socks5://127.0.0.1:20170'
        case "v2raya_global"
            set -gx HTTP_PROXY 'http://127.0.0.1:20171'
            set -gx HTTPS_PROXY 'http://127.0.0.1:20171'
            set -gx SOCKS_PROXY 'socks5://127.0.0.1:20170'
        case '*'
            echo "Unsupported proxy type: $argv[1]"
            return 1
    end
    set -gx NO_PROXY 'localhost,127.0.0.1'
    return 0
end

function __proxy_on_complete
    set -l line (commandline -o)
    if [ (count $line) -eq 1 ]
        echo -e "clash\tSet proxy to Clash"
        echo -e "v2raya\tSet proxy to V2RayA"
        echo -e "v2raya_global\tSet proxy to V2RayA Global"
    end
end

complete -f -c proxy_on -a '(__proxy_on_complete)'
