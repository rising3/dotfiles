# theme
ZSH_THEME="terminalparty"

# plugins
iplugins=(gitfast ruby gem bundler rails emoji-clock brew osx)

# aliases
alias emacs='emacs -nw'

# startup tmux
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux new-session \; source-file ~/.tmux.d/new-session
