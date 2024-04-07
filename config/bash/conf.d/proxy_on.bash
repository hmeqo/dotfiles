proxy_on() {
    case $1 in
        "clash" | "clash_verge")
            export HTTP_PROXY='http://127.0.0.1:7890'
            export HTTPS_PROXY='http://127.0.0.1:7890'
            export SOCKS_PROXY='http://127.0.0.1:7891'
            ;;
        "clash_verge_rev" | "clash_rev")
            export HTTP_PROXY='http://127.0.0.1:7897'
            export HTTPS_PROXY='http://127.0.0.1:7897'
            export SOCKS_PROXY='http://127.0.0.1:7898'
            ;;
        "v2raya")
            export HTTP_PROXY='http://127.0.0.1:20172'
            export HTTPS_PROXY='http://127.0.0.1:20172'
            export SOCKS_PROXY='socks5://127.0.0.1:20170'
            ;;
        "v2raya_global")
            export HTTP_PROXY='http://127.0.0.1:20171'
            export HTTPS_PROXY='http://127.0.0.1:20171'
            export SOCKS_PROXY='socks5://127.0.0.1:20170'
            ;;
        *)
            echo "Unsupported proxy type: $1"
            return 1
            ;;
    esac
    export NO_PROXY='127.0.0.1,localhost'
}
