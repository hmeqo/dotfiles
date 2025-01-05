function _50_keybindings
    fish_vi_key_bindings
    bind --preset -M visual -m default v end-selection repaint-mode
    # bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
    bind -M insert \ei accept-autosuggestion
end
