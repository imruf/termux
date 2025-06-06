# Enable colors and change prompt:
autoload -U colors && colors	# Load colors

setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments


HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history
setopt inc_append_history

#Alias
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shellrc/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shellrc/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shellrc/zshfnrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shellrc/zshfnrc"

autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

bindkey -v
export KEYTIMEOUT=1

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey -v '^?' backward-delete-char



function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
NEW_LINE=$'\n'
PROMPT="%K{237}%B%F{15}[%f%F{123} %f%F{226}  %f%F{78}%~%f%F{15}]%f${NEW_LINE}%F{231}:-> %f%b%k "

zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey -M vicmd '^[[P' vi-delete-char
bindkey -M vicmd '^e' edit-command-line
bindkey -M visual '^[[P' vi-delete

# App

# Zoxide
eval "$(zoxide init zsh)"
# fzf
eval "$(fzf --zsh)"

# source ${XDG_CONFIG_HOME:-$HOME/.config/zsh}/zsh-vcs-prompt/zshrc.sh 2>/dev/null
source ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/history-substring-search/history-substring-search.zsh 2>/dev/null
source ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zsh-completions/zsh-completions.plugin.zsh 2>/dev/null
source ${XDG_CONFIG_HOME:-$HOME/.config}/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# PS1="%B%F{15}[%f%F{41}  %f%F{32}@%f%F{226}  %f%F{78}%~%f%F{15}]%f %F{038}>%f%b "
# PS1="%B%F{15}[%f%F{172}%n%f%F{15}@%f%F{38}%M%f%F{226}  %f%F{78}%~%f%F{15}]%f %F{038}>%f%b "
# PS1="%B%F{blue}$(print -P '\ue70e';)%b%f %F{yellow}%~%f
# %B:-%b "
# RPS1='$(vcs_super_info)'
# PS1="%B%F{yellow}%~%F{green}/ ➜%b "
# RPROMPT='$(vcs_super_info)'
