# tmux

My personal tmux setup. Keybinds, theming, and quality-of-life stuff.

## Dependencies

| Dependency | Install |
|---|---|
| tmux | `brew install tmux` |

## Cheatsheet

| Action | Shortcut |
|--------|----------|
| List all sessions | `tmux ls` / `[Ctrl+f/j] + s` |
| Rename session | `[Ctrl+f/j] + $` |
| Reattach to session | `tmux a` / `tmux a -t [Id]` |
| Kill session | `tmux kill-session` |
| Trigger tmux prefix | `Ctrl+f/j` |
| Create vertical pane | `[Ctrl+f/j] + v` |
| Create horizontal pane | `[Ctrl+f/j] + h` |
| Detach session | `[Ctrl+f/j] + d` |
| Destroy pane | `[Ctrl+f/j] + x` / `exit` |
| Create window | `[Ctrl+f/j] + c` |
| Previous window | `Shift + ←` |
| Next window | `Shift + →` |
| Kill window | `[Ctrl+f/j] + &` |
| Rename window | `[Ctrl+f/j] + ,` |
| Reorder window | `Ctrl+Shift + ←/→` |
| Open config file | `code ~/.tmux.conf` |
