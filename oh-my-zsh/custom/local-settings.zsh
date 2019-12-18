# theme
#ZSH_THEME="terminalparty"
ZSH_THEME="minimal"

# plugins
plugins=(gitfast ruby gem bundler rails emoji-clock brew osx)

# aliases
alias emacs='emacsclient -nw'
alias kill-emacs='emacsclient -e "(kill-emacs)"'
export EDITOR='emacs'
eval "$(hub alias -s)"

export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8

# path
export PATH=~/bin:$PATH

# startup tmux
case $TERM in
     linux)
	[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux new-session \; source-file ~/.tmux.d/new-session
	;;
     *)
	[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux new-session
	;;
esac
