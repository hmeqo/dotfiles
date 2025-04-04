# Dotfiles

[![en](https://img.shields.io/badge/lang-en-red.svg)](./README.md)
[![zh-hans](https://img.shields.io/badge/lang-zh--hans-green.svg)](./README.zh-hans.md)

## Preview

<details>
<summary>KDE</summary>
<img src="https://github.com/user-attachments/assets/d78619c8-4839-49b9-826e-68a9ba267579" alt="kde-preview">
</details>

<details>
<summary>Hyprland</summary>
<img src="https://github.com/user-attachments/assets/c5ed14a4-237c-486a-888a-a48f8de4eee2" alt="hyprland_preview">
</details>

## Install

### Clone repository

Clone this repository to `~/.config/dotfiles`.

```bash
git clone --depth=1 https://github.com/hmeqo/dotfiles ~/.config/dotfiles
cd ~/.config/dotfiles
```

### Manage symlinks with `confsync`

Use `confsync` to manage dotfiles.  
It will display a tui in the terminal to choose which ones you want to sync.

```bash
# run sync.sh that will automatically create python virtual environment, you need run it every time after pull
./sync.sh init

# start `confsync tui`
./sync.sh tui
```

If you already have a configuration file, don’t worry - it will be safely backed up to `~/.config/dotfiles/backup` before the synchronization process begins.
In the event of uninstallation, your original configuration file will be restored from this backup.

### Dotfiles base environment variable

Some ways to set `DOTFILES` environment variable:

- Choose one option of `fish`, `bash`, `zsh` and set it as default shell.

- Add `export DOTFILES=$HOME/.config/dotfiles` to you shell configuration file.

- Add `DOTFILES=<your_user_home>/.config/dotfiles` to `~/.config/environment.d/00-dotfiles.conf` (need systemd)

You can change the location of dotfiles to your favorite location

### Fonts dependencies

Your need install these fonts manually.

- Maple Mono

  Required By: `kde` `hyprland`

- Maple Mono NF (Nerd Font)

  Required By: `konsole` `wazterm` `kitty` `dunst` `rofi`

- Maple Mono NF CN

  Required By: `vscode`

### KDE dotfiles

Install dependencies.

```bash
# Basic
paru -S kwin-effect-rounded-corners-git kwin-effects-forceblur-git ttf-maple
```

Clone wallpapers repository.

```bash
git submodule update --init data/local/share/wallpapers/hmeqo
```

And sync `kde` option and it's dependencies options `kvantum`, `fcitx5`, `wallpaper-hmeqo`.

### fakehome

Fakehome is a program that allows you to run a program in a fake home directory, and it will not create any trash in your home directory.

- Install

  ```bash
  ./sync.sh install-fakehome
  ```

- Uninstall

  ```bash
  # uninstall
  ./sync.sh uninstall-fakehome
  ```

## Configuration

### fish / zsh / bash

#### fish / zsh / bash Directory Structure

- conf.d

  Configuration files.

  - login

    Load files on login.

  - interactive

    Load files on interactive.

### Customize propmt program

Default prompter is starship, example to use oh-my-posh, set `prompter` to `$DOTFILES/data/user/bash/conf.d`

`$DOTFILES/data/user/bash/conf.d/interactive/20-prompt.bash`:

```bash
prompter=oh-my-posh
```
