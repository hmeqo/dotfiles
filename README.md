## Preview

<div style="text-align:center">
KDE
</div>

![Preview](https://github.com/hmeqo/dotfiles/raw/main/assets/preview.png)

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
# run install.sh that will automatically install all dependencies and start `confsync tui`
./install.sh
```

Run `confsync tui` to display each dependency.
You’ll need to install these manually. Once that’s done, execute `confsync tui` again and choose the option you’d like to synchronize.

If you already have a configuration file, don’t worry - it will be safely backed up to `~/.config/dotfiles/backup` before the synchronization process begins.
In the event of uninstallation, your original configuration file will be restored from this backup.

### Fonts dependencies

Your need install these fonts manually.

- FiraCode Nerd Font (Nerd Font)
- Noto Sans
- Noto Sans CJK SC (Chinese)
