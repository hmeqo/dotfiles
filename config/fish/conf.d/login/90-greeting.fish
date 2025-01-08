if status is-interactive
    not test -e /etc/profile.d/greeting.sh || bash /etc/profile.d/greeting.sh
end
