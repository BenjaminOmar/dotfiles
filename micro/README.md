# micro

Config for the [micro](https://github.com/zyedidia/micro) terminal editor.

## Setup

```bash
brew install micro
rm -f ~/.config/micro/bindings.json
ln -s ~/repos/dotfiles/micro/bindings.json ~/.config/micro/bindings.json
rm -f ~/.config/micro/settings.json
ln -s ~/repos/dotfiles/micro/settings.json ~/.config/micro/settings.json
mkdir -p ~/.config/micro/colorschemes
rm -f ~/.config/micro/colorschemes/rose-pine-moon.micro
ln -s ~/repos/dotfiles/micro/colorschemes/rose-pine-moon.micro ~/.config/micro/colorschemes/rose-pine-moon.micro
```

## Keybindings

| Key | Action |
|-----|--------|
| `Ctrl+b` | Smart toggle filemanager (open/focus/close) |

## Theme

Uses **rose-pine-moon** to match the WezTerm color scheme. The translucency comes from WezTerm's `window_background_opacity` (0.8) and `macos_window_background_blur` (50) — micro inherits the terminal's transparency automatically.

## Plugins

- [filemanager](https://github.com/BenjaminOmar/filemanager-plugin) — file tree sidebar (auto-installed in `~/.config/micro/plug/filemanager`)
