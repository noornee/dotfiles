export LESSHISTFILE="-"
export ZDOTDIR="$HOME/.config/zsh"
export GOPATH="$HOME/.local/share/go"
export EDITOR="/usr/bin/nvim"


# this checks if there's an ssh tty variable and then executes tmux
if [[ -n "${SSH_TTY}" ]]; then
	exec tmux
fi


if [[ -d "$HOME/.local/share/npm/" ]]; then
	export NPM_CONFIG_PREFIX="$HOME/.local/share/npm/"
else
	mkdir -p "$HOME/.local/share/npm/"
fi

if [[ ! -d "$HOME/.cache/zsh" ]]; then
	mkdir -p "$HOME/.cache/zsh"
fi


export NPM_CONFIG_CACHE="$HOME/.cache/npm/"

export PATH="$PATH:$HOME/.local/bin" 
export PATH="$PATH:$HOME/.local/share/go/bin/" # go path
export PATH="$PATH:$HOME/.local/share/npm/bin/" # npm bin path


export rsup="$HOME/storage/shared/rsync/upload/"
export rsdl="$HOME/storage/shared/rsync/download/"
export sdct="/storage/CD77-05B4/Android/data/com.termux/files"

# [color codes](https://gist.github.com/JBlond/2fea43a3049b38287e5e9cefc87b2124)
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;47;30m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

export LF_ICONS="di=📁:\
fi=📃:\
tw=🤝:\
ow=📂:\
ln=⛓:\
or=❌:\
ex=🎯:\
*.txt=✍:\
*.mom=✍:\
*.me=✍:\
*.ms=✍:\
*.png=🖼:\
*.webp=🖼:\
*.ico=🖼:\
*.jpg=📸:\
*.jpe=📸:\
*.jpeg=📸:\
*.gif=🖼:\
*.svg=🗺:\
*.tif=🖼:\
*.tiff=🖼:\
*.xcf=🖌:\
*.html=🌎:\
*.xml=📰:\
*.gpg=🔒:\
*.css=🎨:\
*.pdf=📚:\
*.djvu=📚:\
*.epub=📚:\
*.csv=📓:\
*.xlsx=📓:\
*.tex=📜:\
*.md=📘:\
*.r=📊:\
*.R=📊:\
*.rmd=📊:\
*.Rmd=📊:\
*.m=📊:\
*.mp3=🎵:\
*.opus=🎵:\
*.ogg=🎵:\
*.m4a=🎵:\
*.flac=🎼:\
*.wav=🎼:\
*.mkv=🎥:\
*.mp4=🎥:\
*.webm=🎥:\
*.mpeg=🎥:\
*.avi=🎥:\
*.mov=🎥:\
*.mpg=🎥:\
*.wmv=🎥:\
*.m4b=🎥:\
*.flv=🎥:\
*.zip=📦:\
*.rar=📦:\
*.7z=📦:\
*.tar.gz=📦:\
*.1=ℹ:\
*.nfo=ℹ:\
*.info=ℹ:\
*.log=📙:\
*.iso=📀:\
*.img=📀:\
*.bib=🎓:\
*.ged=👪:\
*.part=💔:\
*.torrent=🔽:\
*.jar=♨:\
*.java=♨:\
"
