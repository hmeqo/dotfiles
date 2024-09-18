#!/usr/bin/bash

case $* in
    "lock")
        exec loginctl lock-session
        ;;
    "logout")
        if [[ $XDG_CURRENT_DESKTOP = "Hyprland" ]]; then
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
