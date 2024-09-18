## Preview

<div style="text-align:center">
KDE
</div>

![kde_preview](https://github.com/user-attachments/assets/fe70b75c-56e2-4dd4-9056-8c2016f1e81a)

## Install

### Clone repository

Clone this repository to `~/.config/dotfiles`.

```bash
git clone https://github.com/andrewferrier/dotfiles ~/.config/dotfiles
cd ~/.config/dotfiles
```

### Manage symlinks with `confsync`

Use `confsync` to manage dotfiles.

```bash
# run sync.sh that will automatically create python virtual environment and start `confsync tui`
./sync.sh
```

Run `confsync tui` to display each dependency.
You’ll need to install these manually. Once that’s done, execute `confsync tui` again and choose the option you’d like to synchronize.

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
~/.config/dotfiles/fakehome/install.sh

# uninstall
~/.config/dotfiles/fakehome/uninstall.sh
```

### Fonts dependencies

Your need install these fonts manually.

- FiraCode Nerd Font (Nerd Font)
- Noto Sans
- Noto Sans CJK SC (Chinese)
- Maple Mono NF
