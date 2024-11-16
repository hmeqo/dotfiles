## Preview

<div style="text-align:center">
KDE
</div>

![kde_preview](https://github.com/user-attachments/assets/4047bdae-dc57-426d-93d6-8774c10fc743)

## Install

### Clone repository

Clone this repository to `~/.config/dotfiles`.

```bash
git clone https://github.com/andrewferrier/dotfiles ~/.config/dotfiles
cd ~/.config/dotfiles
```

### Manage symlinks with `confsync`

Use `confsync` to manage dotfiles.  
It will display a tui in the terminal to choose which ones you want to sync.

```bash
# run sync.sh that will automatically create python virtual environment and start `confsync tui`
./sync.sh
```

If you already have a configuration file, don’t worry - it will be safely backed up to `~/.config/dotfiles/backup` before the synchronization process begins.
In the event of uninstallation, your original configuration file will be restored from this backup.

### xdgenv

If you want to use xdgenv, add it to your shell configuration file.

```bash
# bash
. ~/.config/dotfiles/xdgenv/env.bash
. ~/.config/dotfiles/xdgenv/alias.bash

# fish
source ~/.config/dotfiles/xdgenv/env.fish
source ~/.config/dotfiles/xdgenv/alias.fish
```

### fakehome

It can also fix XDG paths for some programs.

#### Install fakehome

Default for code hmcl-bin jetbrains-fleet minecraft-launcher steam thunderbird ..., and you can use `fakehome xxx` manually.

```bash
fakehome/install.sh
# or install for system, it will be installed to /usr/local/bin
sudo fakehome/install_for_system.sh

# uninstall
fakehome/uninstall.sh
```

### Fonts dependencies

Your need install these fonts manually.

- FiraCode Nerd Font (Nerd Font)
- Noto Sans
- Noto Sans CJK SC (Chinese)
- Maple Mono NF

### Install for KDE

Install dependencies.

```bash
# Basic
paru -S kwin-effect-rounded-corners-git kwin-effects-forceblur-git ttf-maple
```

Clone wallpapers repository.

```bash
git submodule update --init local/share/wallpapers/hmeqo
```

And sync `kde` option and it's dependencies options `kvantum`、`fcitx5`、`wallpaper-hmeqo`.

Now, enjoy!
