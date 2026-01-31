#!/usr/bin/env bash
# Capture scrollback and open in neovim

SCROLLBACK_FILE=$(mktemp /tmp/tmux-scrollback-XXXXXX)

# Capture entire scrollback + visible content
tmux capture-pane -pS - > "$SCROLLBACK_FILE"

# Open in a new tmux window with neovim, start at the bottom
tmux new-window -n "scrollback" "nvim -c 'set nomodified buftype=nofile' -c 'normal G' '$SCROLLBACK_FILE'; rm -f '$SCROLLBACK_FILE'"
