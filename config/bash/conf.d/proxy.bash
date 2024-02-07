clash_on() {
  export HTTP_PROXY='http://127.0.0.1:7890'
  export HTTPS_PROXY='http://127.0.0.1:7890'
  export SOCKS_PROXY='http://127.0.0.1:7891'
  export NO_PROXY='127.0.0.1,localhost'
}

v2raya_on() {
  export HTTP_PROXY='http://127.0.0.1:20172'
  export HTTPS_PROXY='http://127.0.0.1:20172'
  export SOCKS_PROXY='http://127.0.0.1:20170'
  export NO_PROXY='127.0.0.1,localhost'
}

v2raya_global_on() {
  export HTTP_PROXY='http://127.0.0.1:20171'
  export HTTPS_PROXY='http://127.0.0.1:20171'
  export SOCKS_PROXY='http://127.0.0.1:20170'
  export NO_PROXY='127.0.0.1,localhost'
}

proxy_off() {
  unset HTTP_PROXY
  unset HTTPS_PROXY
  unset SOCKS_PROXY
  unset NO_PROXY
}
