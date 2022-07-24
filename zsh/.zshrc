# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# history
export HISTFILE="$HOME/.cache/zsh/zsh_history"
HISTSIZE=50000
SAVEHIST=10000


eval "$(dircolors -b)" # Enable ls colors
zstyle ':completion:*' menu select # auto/tab complete
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit


setopt autocd
setopt interactivecomments # recognize comments
setopt no_case_glob # case insensitive globbing
setopt share_history
setopt append_history
setopt hist_ignore_dups


# Alias
alias ls='ls --color=auto'
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias ll='ls -l'      #long list
alias lsd='ls -d .*'  #list dots
alias grep='grep --color=auto --exclude-dir=.git'
alias clh="cat /dev/null > $HISTFILE && echo 'history file cleared'"
alias cls="clear"
alias tv="$HOME/.config/CUSTOM/scripts/mpv.sh" # mpv script for hdmi audio device
alias update_dotfiles="$HOME/.config/CUSTOM/scripts/update_dotfiles.sh"
alias sdn="shutdown now"
alias zshrc="nvim $HOME/.zshrc"
alias tmux="tmux -u"
alias lf="lfub"
alias dl="cd $HOME/downloads"
alias vid="cd $HOME/media/vid/shows"
alias tut="cd $HOME/media/vid/tutorials/"
alias goenv="cd $HOME/workspace/goenv/"
alias codenv="cd $HOME/workspace/codenv/"
alias zshrc="$EDITOR $ZDOTDIR/.zshrc"


source $ZDOTDIR/lib/termsupport.zsh # sets terminal window and tab/icon title
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# powerlevel10k theme
source $ZDOTDIR/themes/powerlevel10k/powerlevel10k.zsh-theme 

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
