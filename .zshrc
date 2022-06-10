
export ZSH="/home/noornee/.oh-my-zsh" # Path to oh-my-zsh installation.
export PATH="$PATH:/home/noornee/.local/bin"
export PATH="$PATH:$HOME/go/bin" # go path
export EDITOR="/usr/bin/nvim"

ZSH_THEME="af-magic"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

alias clh="history -c"
alias cls="clear"
alias win="cd /media/win/Users/noornee/Videos"
alias tv="$HOME/.config/CUSTOM/scripts/mpv.sh" # mpv script for hdmi audio device
alias update_dotfiles="$HOME/.config/CUSTOM/scripts/update_dotfiles.sh"
alias sdn="shutdown now | history -c"
alias toipe="/home/noornee/custom/typ/toipe" 
alias goenv="/home/noornee/Desktop/goenv"
alias zshrc="nvim $HOME/.zshrc"


source $ZSH/oh-my-zsh.sh
