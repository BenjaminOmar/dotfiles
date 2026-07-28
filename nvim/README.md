# nvim

Config for [Neovim](https://neovim.io/) based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

## Setup

```bash
brew install neovim
rm -rf ~/.config/nvim
ln -s ~/repos/dotfiles/nvim ~/.config/nvim
```

First launch will auto-install plugins via `vim.pack`, LSP servers via Mason, and treesitter parsers. Run `:checkhealth` to verify everything is set up.

## Keymaps

| Key | Action |
|-----|--------|
| `<Space>` | Leader key |
| `<leader>sh` | Search help |
| `<leader>sf` | Search files |
| `<leader>sg` | Search by grep |
| `<leader>sw` | Search current word |
| `<leader>sd` | Search diagnostics |
| `<leader><leader>` | Find existing buffers |
| `<leader>f` | Format buffer |
| `<leader>th` | Toggle inlay hints |
| `<leader>q` | Open diagnostic quickfix |
| `grd` | Go to definition |
| `grr` | Go to references |
| `gri` | Go to implementation |
| `grn` | Rename symbol |
| `gra` | Code action |
| `<C-h/j/k/l>` | Navigate splits |

## Theme

Uses **tokyonight-night** by default. Change via `:Telescope colorscheme`.

## Plugins

- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) — fuzzy finder
- [blink.cmp](https://github.com/saghen/blink.cmp) — autocompletion
- [mason.nvim](https://github.com/mason-org/mason.nvim) — LSP/tool installer
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) — syntax highlighting
- [mini.nvim](https://github.com/nvim-mini/mini.nvim) — textobjects, surround, statusline
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) — git signs
- [which-key.nvim](https://github.com/folke/which-key.nvim) — keybind hints
- [conform.nvim](https://github.com/stevearc/conform.nvim) — formatting
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) — highlight TODOs
- [fidget.nvim](https://github.com/j-hui/fidget.nvim) — LSP status

Optional (uncomment in `init.lua` section 10):
- [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) — file explorer
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) — auto close brackets
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) — indent guides
- [nvim-lint](https://github.com/mfussenegger/nvim-lint) — linting
- [nvim-dap](https://github.com/mfussenegger/nvim-dap) — debugging
