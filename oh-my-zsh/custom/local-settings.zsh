# theme
ZSH_THEME="terminalparty"

# plugins
iplugins=(git ruby gem)

# aliases
alias emacs='emacs -nw'

# startup tmux
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux new-session \; source-file ~/.tmux/new-session
