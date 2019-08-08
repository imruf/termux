export ZSH="/data/data/com.termux/files/home/.oh-my-zsh"

#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# CASE_SENSITIVE="true"

# HYPHEN_INSENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"

# export UPDATE_ZSH_DAYS=13

# DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

# ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git extract zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

source $ZSH/oh-my-zsh.sh


# export MANPATH="/usr/local/man:$MANPATH"

# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#APT
alias up="apt update && apt upgrade -y"
alias inp="apt install"
alias rmv="apt remove"


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
alias mp="cp mp .muttrc"
alias ib="cp ib .muttrc"
alias rr="cp rr .muttrc"

#GIT
alias gc='git clone'
alias gu='git push -u origin master'
alias gca='git commit -a'
alias ga='git add'
alias gs='git status'

#MIS
alias ip='ip addr show'
alias weather='curl wttr.in/khagrachari'
alias updb="updatedb"
alias q="exit"

bindkey -v


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir)


OS_ICON='\uF17C'

#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)


