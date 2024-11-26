## Preview

<div style="text-align:center">
KDE
</div>

![kde_preview](https://github.com/user-attachments/assets/4047bdae-dc57-426d-93d6-8774c10fc743)

<div style="text-align:center">
Hyprland
</div>

![hyprland_preview](https://github.com/user-attachments/assets/c5ed14a4-237c-486a-888a-a48f8de4eee2)

## Install

### Clone repository

Clone this repository to `~/.config/dotfiles`.

```bash
git clone https://github.com/hmeqo/dotfiles ~/.config/dotfiles
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

### Dotfiles base environment variable

Choose `essential` option or add `DOTFILES` environment variable to you shell configuration file.

```bash
export DOTFILES=~/.config/dotfiles
```

### Fonts dependencies

Your need install these fonts manually, if you want to use KDE or hyprland.

- FiraCode Nerd Font (Nerd Font)
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

## xdgenv

If you want to use xdgenv, add it to your shell configuration file.

```bash
# bash
. $DOTFILES/xdgenv/env.bash

# fish
source $DOTFILES/xdgenv/env.fish
```

## fakehome

It can also fix XDG paths for some programs.

### Install fakehome

Default for code hmcl-bin jetbrains-fleet minecraft-launcher steam thunderbird ..., and you can use `fakehome xxx` manually.

```bash
$DOTFILES/fakehome/install.sh
# or install for system, it will be installed to /usr/local/bin
sudo $DOTFILES/fakehome/install_for_system.sh

# uninstall
$DOTFILES/fakehome/uninstall.sh
# for system
sudo $DOTFILES/fakehome/uninstall_for_system.sh
```
