mkdir -p ~/.local/bin

ln -sf ~/.config/dotfiles/fakehome/bin/fakehome ~/.local/bin/fakehome
# steam
ln -sf ~/.config/dotfiles/fakehome/applications/steam.desktop "$XDG_DATA_HOME/applications/steam.desktop"
ln -sf ~/.config/dotfiles/fakehome/bin/steam ~/.local/bin/steam
ln -sf ~/.config/dotfiles/fakehome/bin/steam ~/.local/bin/steam-runtime
# minecraft-launcher
ln -sf ~/.config/dotfiles/fakehome/bin/hmcl-bin ~/.local/bin/minecraft-launcher
# hmcl-bin
ln -sf ~/.config/dotfiles/fakehome/bin/hmcl-bin ~/.local/bin/hmcl-bin
# thunderbird
ln -sf ~/.config/dotfiles/fakehome/bin/thunderbird ~/.local/bin/thunderbird
# firefox
ln -sf ~/.config/dotfiles/fakehome/applications/firefox.desktop "$XDG_DATA_HOME/applications/firefox.desktop"
ln -sf ~/.config/dotfiles/fakehome/bin/firefox ~/.local/bin/firefox
# code
ln -sf ~/.config/dotfiles/fakehome/applications/code.desktop "$XDG_DATA_HOME/applications/code.desktop"
ln -sf ~/.config/dotfiles/fakehome/applications/code-url-handler.desktop "$XDG_DATA_HOME/applications/code-url-handler.desktop"
ln -sf ~/.config/dotfiles/fakehome/bin/code ~/.local/bin/code
# jetbrains-fleet
ln -sf ~/.config/dotfiles/fakehome/bin/jetbrains-fleet ~/.local/bin/jetbrains-fleet
