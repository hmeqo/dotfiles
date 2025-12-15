# Dotfiles

[![en](https://img.shields.io/badge/lang-en-red.svg)](../README.md)

## 预览

<details>
<summary>KDE</summary>
<img src="https://github.com/user-attachments/assets/37fd93bb-4fbb-4b0d-9f54-6896d0bb2842" alt="kde-preview">
</details>

## 安装

### 克隆仓库

克隆仓库到 `~/.local/opt/dotfiles`

```bash
git clone --depth=1 https://github.com/hmeqo/dotfiles ~/.local/opt/dotfiles
cd ~/.local/opt/dotfiles
```

### 通过 confsync 管理链接文件

使用 `confsync` 管理链接文件，通过 tui 选择要同步的选项

```bash
# 初始化 dotfiles 环境, 需要每次 pull 后运行
./sync.sh init

# 运行 confsync tui
./sync.sh tui
```

如果你已经有配置文件在目标目录了，confsync 会在同步前自动备份配置文件到 `$DOTFILES/backup`，并在卸载或取消同步时恢复

### Dotfiles 基础环境变量

本仓库依赖 `DOTFILES` 环境变量, 通过以下任一方式设置 `DOTFILES` 环境变量:

- 选择其中任一选项 `fish`, `bash`, `zsh` 并设置为默认 shell

- 添加 `export DOTFILES=$HOME/.local/opt/dotfiles` 到你的 shell 配置文件

- 添加 `DOTFILES=<your_user_home>/.local/opt/dotfiles` 到 `~/.config/environment.d/00-dotfiles.conf` (依赖DM的行为)

可以修改 `DOTFILES` 来更改 dotfiles 目录的位置

### 字体依赖

你需要手动安装这些字体

- Maple Mono

  被依赖: `kde`

- Maple Mono NF (Nerd Font)

  被依赖: `konsole` `wazterm` `kitty`

- Maple Mono NF CN 

  被依赖: `vscode`

### KDE dotfiles

安装依赖

```bash
paru -S kwin-effect-rounded-corners-git kwin-effects-forceblur-git ttf-maple
```

克隆 wallpapers 仓库

```bash
git submodule update --init local/share/wallpapers/hmeqo
```

同步 `kde` 和其依赖的选项 `kvantum`, `fcitx5`, `wallpaper-hmeqo`

### fakehome

伪造 `$HOME` 环境变量让某些不支持 XDG 规范的软件不会在家目录产生垃圾, 支持 Java 程序

- 安装

  ```bash
  ./sync.sh install-fakehome
  ```

- 卸载

  ```bash
  # uninstall
  ./sync.sh uninstall-fakehome
  ```

## 配置

### fish / zsh / bash

#### fish / zsh / bash 目录结构

- conf.d

  配置文件, 任何情况都会加载

  - login

    在登录时加载的文件

  - interactive

    在交互时加载的文件

### 自定义提示符程序

默认是 starship, 可通过以下方式修改为 oh-my-posh, 设置 `prompter` 到 `$DOTFILES/data/user/bash/conf.d`, 其他 shell 同理

`$DOTFILES/data/user/bash/conf.d/interactive/70-prompt.bash`:

```bash
prompter=oh-my-posh
```
