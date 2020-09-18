#autoload -U colors && colors    # Load colors

#PS1="%F{#8e388e}% ~ %F{#586e75}$%b "

#EXPORT
export ZSH="/data/data/com.termux/files/home/.oh-my-zsh"
# export LANG=en_US.UTF-8

#SOURCE
source $ZSH/oh-my-zsh.sh
source /data/data/com.termux/files/home/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

#Plugins
plugins=(git extract zsh-autosuggestions zsh-syntax-highlighting zsh-completions vi-mode)

#Theme
#ZSH_THEME="powerlevel9k/powerlevel9k"

#Alias
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc"


#Function
#Ytld
function yts () {
    youtube-dl -j ytsearch:$1
}

#Transmission
tsmcc() {
        transmission-remote -l | grep 100% | grep Done | \
        awk '{print $1}' | xargs -n 1 -I % transmission-remote -t % -r ;} #clear completed
tsm() { transmission-remote --list ;}
	# numbers of ip being blocked by the blocklist
	# credit: smw from irc #transmission-status
tsmcnt() { echo "Blocklist rules:" $(curl -s --data \
	'{"method": "session-get"}' localhost:9091/transmission/rpc -H \
	"$(curl -s -D - localhost:9091/transmission/rpc | grep X-Transmission-Session-Id)" \
	| cut -d: -f 11 | cut -d, -f1) ;} #tsm-count
# demo video: http://www.youtube.com/watch?v=TyDX50_dC0M
tsmbl() { $PATH_SCRIPTS/blocklist.sh ;}		# update blocklist
tsmdmn() { transmission-daemon ;} #tsm-daemon
tsmquit() { killall transmission-daemon ;} #killall
tsmaspd() { transmission-remote --alt-speed ;}	# limit bandwidth
tsmanspd() {	transmission-remote --no-alt-speed ;}	# dont limit bandwidth
tsmadd() { transmission-remote --add "$1" ;} #add torrent
tsmaskp() { transmission-remote -t"$1" --reannounce ;} #ask peers
tsmstop() { transmission-remote -t"$1" --stop ;}		# <id> or all
tsmstart() { transmission-remote -t"$1" --start ;}		# <id> or all
tsmpurge() { transmission-remote -t"$1" --remove-and-delete ;} # delete data also
tsmdel() { transmission-remote -t"$1" --remove ;}		# leaves data alone
tsminfo() { transmission-remote -t"$1" --info ;} #info
tsmspeed() { while true;do clear; transmission-remote -t"$1" -i | grep Speed;sleep 1;done ;}

#bindkey -v

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

PATH="/data/data/com.termux/files/home/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/data/data/com.termux/files/home/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/data/data/com.termux/files/home/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/data/data/com.termux/files/home/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/data/data/com.termux/files/home/perl5"; export PERL_MM_OPT;
