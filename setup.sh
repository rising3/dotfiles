#!/bin/sh

DIR=$(cd $(dirname $0) && pwd)

# oh-my-zsh
rm ~/.oh-my-zsh/custom/local-settings.zsh
ln -s $DIR/oh-my-zsh/custom/local-settings.zsh ~/.oh-my-zsh/custom/local-settings.zsh

# emacs
rm -rf ~/.emacs.d
if [ "${OS}" != "Windows_NT" ]; then
  ln -s $DIR/emacs.d ~/.emacs.d
else
  cp -ri $DIR/emacs.d ~/.emacs.d
fi

#etmux
rm ~/.tmux.conf
rm -rf ~/.tmux.d
ln -s $DIR/tmux.conf ~/.tmux.conf
ln -s $DIR/tmux.d ~/.tmux.d

# git
git config --global core.editor 'emacs'
git config --global color.ui 'auto'
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
git config --global credential.helper cache --timeout=3600
