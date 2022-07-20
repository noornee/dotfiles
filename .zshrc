ZSH_THEME="af-magic"
HISTFILE="$ZDOTDIR/.zsh_history"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

setopt autocd # switches directories simple by typing the name of the directory

# alias
alias clh="history -c"
alias cls="clear"
alias tv="$HOME/.config/CUSTOM/scripts/mpv.sh" # mpv script for hdmi audio device
alias update_dotfiles="$HOME/.config/CUSTOM/scripts/update_dotfiles.sh"
alias sdn="shutdown now"
alias zshrc="nvim $HOME/.config/zsh/.zshrc"
alias tmux="tmux -u"
alias lf="lfub"
alias dl="cd $HOME/downloads"
alias vid="cd $HOME/media/vid/shows"
alias tut="cd $HOME/media/vid/tutorials/"
alias goenv="cd $HOME/workspace/goenv/"
alias codenv="cd $HOME/workspace/codenv/"

source $ZSH/oh-my-zsh.sh

bindkey -v
bindkey -s '^f' 'lf\n'
#export KEYTIMEOUT=1
