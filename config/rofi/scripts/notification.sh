#!/usr/bin/bash

case $* in
"close-all")
    exec dunstctl close-all
    ;;
*)
    echo "close-all"
    ;;
esac
