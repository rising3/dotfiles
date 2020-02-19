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

# JVM
export JVM_OPTS="--add-opens=java.base/java.lang=ALL-UNNAMED --add-opens=java.base/java.lang.invoke=ALL-UNNAMED --illegal-access=deny"

# path
export PATH=~/bin:$PATH

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# startup tmux
case $TERM in
     linux)
	[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux new-session \; source-file ~/.tmux.d/new-session
	;;
     *)
	[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux new-session
	;;
esac
