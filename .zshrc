#EXPORT
export ZSH="/data/data/com.termux/files/home/.oh-my-zsh"
# export LANG=en_US.UTF-8

#Plugins
plugins=(git extract zsh-autosuggestions zsh-syntax-highlighting zsh-completions vi-mode)


#Theme
#ZSH_THEME="robbyrussell"
#ZSH_THEME="random"
#ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

#SOURCE
source $ZSH/oh-my-zsh.sh
source /data/data/com.termux/files/home/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

#termux-cd
alias cdusr="cd $PREFIX"
alias cdetc="cd $PREFIX/etc/"
alias cdbin="cd $PREFIX/bin/"
alias cdshare="cd $PREFIX/share/"

#APT
alias up="apt update && apt upgrade -y"
alias inp="apt install"
alias rmv="apt remove"
alias pacs="apt search"

#youtube-dl
alias ytd-aac="youtube-dl --extract-audio --audio-format aac "
alias ytd-besta="youtube-dl --extract-audio --audio-format best "
alias ytd-flac="youtube-dl --extract-audio --audio-format flac "
alias ytd-m4a="youtube-dl --extract-audio --audio-format m4a "
alias ytd-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias ytd-opus="youtube-dl --extract-audio --audio-format opus "
alias ytd-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias ytd-wav="youtube-dl --extract-audio --audio-format wav "
alias ytd-best="youtube-dl -f bestvideo+bestaudio "
alias ytd='youtube-dl'
alias ytdF='youtube-dl -F'
alias ytdf='youtube-dl -f'
alias ytv='youtube-viewer -C'

#MUTT
alias mail="mutt"
alias mp="cp mp .muttrc && mail"
alias ib="cp ib .muttrc && mail"
alias rr="cp rr .muttrc && mail"
alias lic="cp lic .muttrc && mail"

#GIT
alias gitc='git clone'
alias gitu='git push -u origin master'
alias gitca='git commit -a'
alias gita='git add'
alias gits='git status'

#SSH
alias fst='sshd'
alias fsts='pkill sshd'
alias myip='ifconfig'

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

#MIS
alias wget="wget -c"
alias ip='ip addr show'
alias weather='curl wttr.in/khagrachari'
alias updb="updatedb"
alias q="exit"
alias math="mathomatic"
alias calc='python -ic "from __future__ import division; from math import *; from random import *"'
alias nnn='nnn -d'
#bindkey -v


#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir)


#OS_ICON='\uF17C'

#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
