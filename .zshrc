
export ZSH="$HOME/.oh-my-zsh" # Path to oh-my-zsh installation.
export PATH="$PATH:$HOME/.local/bin"
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
alias toipe="$HOME/custom/typ/toipe" 
alias goenv="$HOME/Desktop/goenv"
alias zshrc="nvim $HOME/.zshrc"
alias doom="~/.emacs.d/bin/doom"
alias log="$HOME/syncthing/log.sh"
alias tmux="tmux -u"
alias rx="rxfetch"

source $ZSH/oh-my-zsh.sh
