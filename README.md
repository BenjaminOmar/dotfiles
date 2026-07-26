# dotfiles

My personal dotfiles. Each tool gets its own subfolder with its config and a README.

- [`tmux/`](tmux/) — tmux config and cheatsheet

## Setup

```bash
# General
mkdir -p ~/repos
cd ~/repos
git clone https://github.com/BenjaminOmar/dotfiles.git
cd dotfiles

# tmux
rm -f ~/.tmux.conf
ln -s ~/repos/dotfiles/tmux/.tmux.conf ~/.tmux.conf
```
