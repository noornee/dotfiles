# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

setopt autocd
setopt interactivecomments # recognize comments
setopt no_case_glob # case insensitive globbing
setopt share_history
setopt append_history
setopt hist_ignore_dups

# source
source "$ZDOTDIR/aliasrc" # alias
source $ZDOTDIR/lib/termsupport.zsh # sets terminal window and tab/icon title
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/themes/powerlevel10k/powerlevel10k.zsh-theme # powerlevel10k theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
