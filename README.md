# Personal dotfiles

## Install

Use `simpleconfigsync` to manage dotfiles.

```bash
# Install simpleconfigsync
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

Run `simpleconfigsync-tui` to display each dependency.
You’ll need to install these manually. Once that’s done, execute `simpleconfigsync-tui` again and choose the option you’d like to synchronize.

If you already have a configuration file, don’t worry - it will be safely backed up to `~/dotfiles/backup` before the synchronization process begins.
In the event of uninstallation, your original configuration file will be restored from this backup.

### Fonts Dependencies

Your need install these fonts manually.

- Noto Sans
- Noto Color Emoji (Emoji)
- Noto Sans CJK SC (Chinese)
- FiraCode Nerd Font (Nerd Font)

#### For ArchLinux

```bash
sudo pacman -S noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-firacode-nerd
```
