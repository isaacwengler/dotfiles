# attach to `main` tmux session on startup
if [ "$TMUX" = "" ]; then tmux new-session -A -s main; fi

alias vim="nvim"
alias vi="nvim"
bindkey -v

# <C-f> to run tmux-session
function tmux_session_function { tmux-session }
zle -N tmux_session_widget tmux_session_function
bindkey '' tmux_session_widget
