export XDG_PICTURES_DIR="$HOME/media/pictures"


export LESSHISTFILE="-"
export ZDOTDIR="$HOME/.config/zsh"
export GOPATH="$HOME/.local/share/go"
export EDITOR="/usr/bin/nvim"

export CARGO_HOME="$HOME/.local/share/cargo"
export RUSTUP_HOME="$HOME/.local/share/rustup"

export NPM_CONFIG_CACHE="$HOME/.cache/npm/"
if [[ -d "$HOME/.local/share/npm/" ]]; then
	export NPM_CONFIG_PREFIX="$HOME/.local/share/npm/"
else
	mkdir -p "$HOME/.local/share/npm/"
fi

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$GOPATH/bin" # go path
export PATH="$PATH:$CARGO_HOME/bin" # cargo path
export PATH="$PATH:$NPM_CONFIG_PREFIX/bin" # npm path

# create zsh directory in the cache dir
if [[ ! -d "$HOME/.cache/zsh" ]];then
	mkdir -p "$HOME/.cache/zsh"
fi

# Phone
export istore="~/storage/shared/rsync/download" # mobile phone internal storage path
export estore="/storage/2731-1C20/Android/data/com.termux/files" # mobile phone sdcard path

export BOOKMARK_FILE="$HOME/.local/share/bookmarks.txt"

# https://github.com/Cloudef/bemenu
export BEMENU_OPTS="--tb "#005577" --tf "#CACACA" --hb "#005577" --hf "#CACACA" --hp 10"

# [color codes](https://gist.github.com/JBlond/2fea43a3049b38287e5e9cefc87b2124)
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;47;30m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
