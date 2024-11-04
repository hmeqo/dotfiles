#!/usr/bin/bash

case $* in
"logout")
    if [[ $XDG_CURRENT_DESKTOP = "Hyprland" ]]; then
        pkill xdg-desktop-portal-hyprland
        export QT_QPA_PLATFORMTHEME=""
        dbus-update-activation-environment --systemd QT_QPA_PLATFORMTHEME
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
    echo "logout"
    echo "poweroff"
    echo "reboot"
    ;;
esac
