# dotfiles

My personal dotfiles. Each tool gets its own subfolder with its config and a README.

- [`tmux/`](tmux/) — tmux config and cheatsheet
- [`wezterm/`](wezterm/) — WezTerm config
- [`nvim/`](nvim/) — neovim config (kickstart-based)

## Setup

```bash
# General
# Auto-accept brew install prompts
export NONINTERACTIVE=1
mkdir -p ~/repos
cd ~/repos
[ -d dotfiles ] || git clone https://github.com/BenjaminOmar/dotfiles.git
cd dotfiles

# tmux
brew install tmux
rm -f ~/.tmux.conf
ln -s ~/repos/dotfiles/tmux/.tmux.conf ~/.tmux.conf

# wezterm
brew install --cask wezterm
brew install --cask font-hack-nerd-font
rm -f ~/.wezterm.lua
ln -s ~/repos/dotfiles/wezterm/.wezterm.lua ~/.wezterm.lua

# nvim
brew install neovim tree-sitter
npm install -g tree-sitter-cli
rm -rf ~/.config/nvim
ln -s ~/repos/dotfiles/nvim ~/.config/nvim
```
