#!/bin/zsh
# Default programs:
export EDITOR="/data/data/com.termux/files/usr/bin/nvim"

#xdg-home
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export ELINKS_CONFDIR="$XDG_CONFIG_HOME"/elinks

#Path
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"
