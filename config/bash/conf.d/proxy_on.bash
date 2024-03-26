proxy_on() {
  if [ $1 = "clash" ]; then
    export HTTP_PROXY='http://127.0.0.1:7890'
    export HTTPS_PROXY='http://127.0.0.1:7890'
    export SOCKS_PROXY='http://127.0.0.1:7891'
  elif [ $1 = "v2raya" ]; then
    export HTTP_PROXY='http://127.0.0.1:20172'
    export HTTPS_PROXY='http://127.0.0.1:20172'
    export SOCKS_PROXY='socks5://127.0.0.1:20170'
  elif [ $1 = "v2raya_global" ]; then
    export HTTP_PROXY='http://127.0.0.1:20171'
    export HTTPS_PROXY='http://127.0.0.1:20171'
    export SOCKS_PROXY='socks5://127.0.0.1:20170'
  else
    echo "Unsupported proxy type: $1"
    return 1
  fi
  export NO_PROXY='localhost,127.0.0.1'
}
