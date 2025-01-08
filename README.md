## Preview

<details>
<summary>KDE</summary>
<div style="text-align:center">
KDE
</div>
<img src="https://github.com/user-attachments/assets/02d225bb-f09b-4007-bf82-73386df24cc3" alt="kde-preview">
</details>

<details>
<summary>Hyprland</summary>
<div style="text-align:center">
Hyprland
</div>
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
# run sync.sh that will automatically create python virtual environment and start `confsync tui`
./sync.sh
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

Your need install these fonts manually, if you want to use KDE or hyprland.

- FiraCode Nerd Font (Nerd Font)
- Maple Mono NF

### KDE dotfiles

Install dependencies.

```bash
# Basic
paru -S kwin-effect-rounded-corners-git kwin-effects-forceblur-git ttf-maple
```

Clone wallpapers repository.

```bash
git submodule update --init local/share/wallpapers/hmeqo
```

And sync `kde` option and it's dependencies options `kvantum`, `fcitx5`, `wallpaper-hmeqo`.

Now, enjoy!

### fakehome

Default for code hmcl-bin jetbrains-fleet minecraft-launcher steam thunderbird ..., and you can use `fakehome xxx` manually.

- Install

  ```bash
  $DOTFILES/fakehome/sync.sh
  ```

- Uninstall

  ```bash
  # uninstall
  $DOTFILES/fakehome/uninstall.sh
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

Default prompter is starship, example to use oh-my-posh, set `prompter` to `$DOTFILES/user/bash/loader/interactive.bash`

```bash
# $DOTFILES/user/bash/conf.d/interactive/20-prompt.bash
prompter=oh-my-posh
```
