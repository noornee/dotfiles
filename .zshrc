
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
alias sdn="shutdown now"
alias zshrc="nvim $HOME/.zshrc"
alias tmux="tmux -u"
alias dl="cd $HOME/Downloads"
alias vid="cd $HOME/Downloads/Videos/Shows"
alias tut="cd $HOME/Downloads/Videos/Tutorials/"

source $ZSH/oh-my-zsh.sh
