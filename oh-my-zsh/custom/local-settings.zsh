# theme
ZSH_THEME="terminalparty"

# plugins
plugins=(gitfast ruby gem bundler rails emoji-clock brew osx)

# aliases
alias emacs='emacsclient -nw'
alias kill-emacs='emacsclient -e "(kill-emacs)"'

# startup tmux
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux new-session \; source-file ~/.tmux.d/new-session
