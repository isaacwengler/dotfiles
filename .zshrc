if [ "$TMUX" = "" ]; then tmux new-session -A -s main; fi

alias vim="nvim"
alias vi="nvim"
bindkey -v

# set history file based on session name
sessionname=$(tmux display-message -p '#S')
if [ "$sessionname" !=  "" ]; then 
    HISTFILE=~/.history/tmux_${sessionname};
else
    HISTFILE=~/.zsh_history;
fi

alias f="print -z \$(fzf-command-history)"

# save lots of history without duplicates
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY
