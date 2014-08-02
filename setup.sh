#!/bin/sh

DIR=$(cd $(dirname $0) && pwd)

# oh-my-zsh
rm ~/.oh-my-zsh/custom/local-settings.zsh
ln -s $DIR/oh-my-zsh/custom/local-settings.zsh ~/.oh-my-zsh/custom/local-settings.zsh

# emacs
rm -rf ~/.emacs.d
ln -s $DIR/emacs.d ~/.emacs.d

# tmux
rm ~/.tmux.conf
rm -rf ~/.tmux.d
ln -s $DIR/tmux.conf ~/.tmux.conf
ln -s $DIR/tmux.d ~/.tmux.d
