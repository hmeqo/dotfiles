proxy_on() {
    case $1 in
    "clash" | "clash_verge")
        export http_url='http://127.0.0.1:7890'
        export socks_url='socks://127.0.0.1:7891'
        ;;
    "clash_verge_rev" | "clash_rev")
        export http_url='http://127.0.0.1:7897'
        export socks_url='socks://127.0.0.1:7898'
        ;;
    "v2raya")
        export http_url='http://127.0.0.1:20172'
        export socks_url='socks://127.0.0.1:20170'
        ;;
    "v2raya_global")
        export http_url='http://127.0.0.1:20171'
        export socks_url='socks://127.0.0.1:20170'
        ;;
    *)
        echo "Unsupported proxy type: $1"
        return 1
        ;;
    esac
    export http_proxy="$http_url"
    export https_proxy="$http_url"
    export ftp_proxy="$http_url"
    export socks_proxy="$socks_url"
    export no_proxy='localhost,127.0.0.1'
    return 0
}
