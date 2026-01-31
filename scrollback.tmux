#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEFAULT_KEY="v"

main() {
    local key
    key=$(tmux show-option -gqv @scrollback-key)
    key=${key:-$DEFAULT_KEY}

    tmux bind-key "$key" run-shell "$CURRENT_DIR/scripts/open-scrollback.sh"
}

main
