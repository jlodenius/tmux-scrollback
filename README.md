# tmux-scrollback

Open your tmux pane's scrollback history in Neovim for easy navigation and searching.

## Requirements

- tmux
- neovim

## Install

With [TPM](https://github.com/tmux-plugins/tpm), add to `.tmux.conf`:

```bash
set -g @plugin 'jlodenius/tmux-scrollback'
```

Then press `prefix + I` to install.

## Usage

Press `prefix + v` to open the current pane's full scrollback in Neovim. Close with `:q`.

### Custom key binding

```bash
set -g @scrollback-key "b"
```
