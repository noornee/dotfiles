if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# run ssh daemon
sshd

# history
HISTFILE="$HOME/.cache/zsh/zsh_history"
HISTSIZE=50000
SAVEHIST=10000


eval "$(dircolors -b)" # Enable ls colors
zstyle ':completion:*' menu select # auto/tab complete
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

bindkey -s '^t' 'tmux\n'
bindkey -s '^f' 'lfub\n'


setopt interactivecomments # recognize comments
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
alias diff="diff --color -u"
alias clh="cat /dev/null > $HISTFILE && history -p && echo 'history file cleared'"
alias cls="clear"
alias lf="lfub"
alias hist="history 0"
alias zshrc="$EDITOR $ZDOTDIR/.zshrc"
alias sd="cd ~/storage/shared/"
alias sdc="cd /storage/CD77-05B4/"
alias sdct="cd /storage/CD77-05B4/Android/data/com.termux/files/"
alias dl="cd ~/storage/shared/Download/"

alias tv="cd $HOME/storage/shared/Telegram/Telegram\ Video/"
alias tf="cd $HOME/storage/shared/Telegram/Telegram\ Files/"

alias twu="termux-wake-unlock"
alias ..="cd .."
alias dbstart="pg_ctl -D /data/data/com.termux/files/usr/var/lib/postgres start"

# source
source $ZDOTDIR/lib/termsupport.zsh # sets terminal window and tab/icon title
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# powerlevel10k theme
source $ZDOTDIR/themes/powerlevel10k/powerlevel10k.zsh-theme 

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
