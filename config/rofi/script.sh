#!/usr/bin/bash

case $* in
    "lock")
        exec loginctl lock-session
        ;;
    "logout")
        if pkill -0 hypr; then
            exec hyprctl dispatch exit
        fi
        ;;
    "poweroff")
        exec systemctl poweroff
        ;;
    "reboot")
        exec systemctl reboot
        ;;
    *)
        echo "lock"
        echo "logout"
        echo "poweroff"
        echo "reboot"
        ;;
esac
