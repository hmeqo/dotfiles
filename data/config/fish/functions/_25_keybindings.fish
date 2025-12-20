function _25_keybindings
    fish_vi_key_bindings

    bind --preset --mode visual -m default v end-selection repaint-mode
    # bind --mode insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
    bind --mode insert \e/ accept-autosuggestion

    for mode in default insert
        bind --mode $mode \ct "commandline --current-token --replace -- (fzf --layout reverse --preview 'bat --style=numbers --color=always {}' --bind 'J:preview-page-down,K:preview-page-up')"
    end
end
