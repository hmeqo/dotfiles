case $* in
    "lock")
        exec loginctl lock-session
        ;;
    "poweroff")
        exec systemctl poweroff
        ;;
    "reboot")
        exec systemctl reboot
        ;;
    *)
        echo "lock"
        echo "poweroff"
        echo "reboot"
        ;;
esac
