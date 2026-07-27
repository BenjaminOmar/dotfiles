# micro

Config for the [micro](https://github.com/zyedidia/micro) terminal editor.

## Setup

```bash
brew install micro
rm -f ~/.config/micro/bindings.json
ln -s ~/repos/dotfiles/micro/bindings.json ~/.config/micro/bindings.json
```

## Keybindings

| Key | Action |
|-----|--------|
| `Ctrl+b` | Smart toggle filemanager (open/focus/close) |

## Plugins

- [filemanager](https://github.com/BenjaminOmar/filemanager-plugin) — file tree sidebar (auto-installed in `~/.config/micro/plug/filemanager`)
