if status is-login
    # set -gx GTK_THEME Fluent-round-Dark
    # set -gx QT_STYLE_OVERRIDE kvantum

    # set -gx SSLKEYLOGFILE "$HOME/.local/share/sslkeylog.log"
end

if status is-interactive
    set -gx SSH_ASKPASS /usr/bin/ksshaskpass
    set -gx SSH_ASKPASS_REQUIRE prefer
end
