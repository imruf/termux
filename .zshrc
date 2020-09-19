#autoload -U colors && colors    # Load colors

#PS1="%F{#8e388e}% ~ %F{#586e75}$%b "

# EXPORT
# export ZSH="/data/data/com.termux/files/home/.oh-my-zsh"
# export LANG=en_US.UTF-8

# Plugins
# plugins=(git extract zsh-autosuggestions zsh-syntax-highlighting zsh-completions vi-mode)

#SOURCE
#source $ZSH/oh-my-zsh.sh
#source /data/data/com.termux/files/home/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

#Alias
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zshfnrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zshfnrc"

#bindkey -v

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

PATH="/data/data/com.termux/files/home/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/data/data/com.termux/files/home/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/data/data/com.termux/files/home/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/data/data/com.termux/files/home/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/data/data/com.termux/files/home/perl5"; export PERL_MM_OPT;
