function pyfiglet-picker
    set picked_font (printf "%s\n" (pyfiglet -l) | fzf --layout=reverse --preview="echo -e {}\n; pyfiglet -f {} $argv" --preview-window=right,80%)
    not test -z "$picked_font" || return
    set output (pyfiglet -f $picked_font $argv)
    printf "%s\n" $output
    # Copy to clipboard
    if type -q wl-copy && test $XDG_SESSION_TYPE = wayland
        printf "%s\n" $output | wl-copy
    else if type -q xclip && test $XDG_SESSION_TYPE = x11
        printf "%s\n" $output | xclip
    end
end
