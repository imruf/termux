#!/bin/zsh

# Path
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"

# Default
export EDITOR="/data/data/com.termux/files/usr/bin/nvim"
export BROWSER="/data/data/com.termux/files/usr/bin/elinks"

# ManPage
# export MANPAGER='nvim +Man!'
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
# export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

# xdg-dir
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"

export ELINKS_CONFDIR="$XDG_CONFIG_HOME"/elinks
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME"/notmuch/notmuchrc
export MOST_INITFILE="$XDG_CONFIG_HOME"/most/mostrc

# Fzf
# export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"


# nnn environment
export NNN_USE_EDITOR=1
export NNN_OPTS="adr"
export NNN_FIFO='/tmp/nnn.fifo'
export NNN_OPENER=mimeopen
export NNN_COLORS="3427"
export NNN_FCOLORS='00e2272ec16033f7c6d6abc4'
# export NNN_FCOLORS='c1e2272e006033f7c6d6abc4'
export NNN_BMS='h:~/;d:~/storage/downloads;n:~/storage/documents;p:~/storage/pictures'
export NNN_PLUG='d:drop;f:fzfcd;p:preview-tui-ext;w:setbg;x:dups'
