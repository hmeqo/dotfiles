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

- Add `export DOTFILES=~/.config/dotfiles` to you shell configuration file.

- Add `DOTFILES=/<your_user_home>/.config/dotfiles` to `~/.config/environment.d/00-dotfiles.conf` (need systemd)

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

And sync `kde` option and it's dependencies options `kvantum`, `fcitx5`, `wallpaper-hmeqo`.

Now, enjoy!

## fakehome

### Install fakehome

Default for code hmcl-bin jetbrains-fleet minecraft-launcher steam thunderbird ..., and you can use `fakehome xxx` manually.

```bash
$DOTFILES/fakehome/install.sh

# uninstall
$DOTFILES/fakehome/uninstall.sh
```

## Structure

### fish / zsh / bash directory structure

#### Default structure

- conf.opt.d

  Configuration files, not auto loaded.

- functions (fish only)

  Functions, auto loaded.

- loader

  Load conf.opt.d by `loadlist` environment variable.

  - login.bash

    Called by `bash_profile`/`zprofile`/`config.fish` when you login.

  - interactive.bash

    Called by `bashrc`/`zshrc`/`config.fish` when you login.

- `bash_profile`/`zprofile`/`config.fish`

- `bashrc`/`zshrc`/`config.fish`

Bash default order: bash_profile -> loader/login.bash (and defined loadlist) -> bashrc -> loader/interactive.bash (and defined loadlist)

#### User structure

##### bash

- loader

  - login.bash

  - interactive.bash

- bash_profile

- bashrc

Default order: loader/login.bash -> bash_profile -> loader/interactive.bash -> bashrc

##### Other

Be like `bash`.

#### Customize loader loadlist

Create user config directory `$DOTFILES/user`.

Add config file `$DOTFILES/user/bash/loader/login.bash` on login or `$DOTFILES/user/bash/loader/interactive.bash` on interactive,  
and set `loadlist` environment variable.

The example below that will prepend xdgenv.bash to loadlist.

```bash
# $DOTFILES/user/bash/loader/login.bash or $DOTFILES/user/bash/loader/interactive.bash
loadlist=("$DOTFILES/user/bash/xdgenv.bash" $loadlist)
```

```zsh
# $DOTFILES/user/zsh/loader/login.bash or $DOTFILES/user/zsh/loader/interactive.bash
loadlist=("$DOTFILES/user/zsh/xdgenv.bash" $loadlist)
```

```fish
# $DOTFILES/user/fish/loader/login.bash or $DOTFILES/user/fish/loader/interactive.bash
set loadlist "$DOTFILES/user/fish/xdgenv.fish" $loadlist
```

#### Customize propmt program.

Default prompter is starship, example to use oh-my-posh, set `prompter` to `$DOTFILES/user/bash/loader/interactive.bash`

```bash
# $DOTFILES/user/bash/loader/interactive.bash
prompter=oh-my-posh
```
