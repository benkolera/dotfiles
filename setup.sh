#!/usr/bin/bash

mkdir -p ~/.config
ln -sf $(pwd)/.zshrc $HOME/.zshrc
ln -sf $(pwd)/.zsh.d $HOME/
ln -sf $(pwd)/.tmux.conf $HOME/.tmux.conf
ln -sf $(pwd)/.config/nvim $HOME/.config/
ln -sf $(pwd)/extras/vim-plug/plug.vim $HOME/.config/nvim/autoload/plug.vim
ln -sf $(pwd)/.xmonad/ $HOME/

echo sh install.$1.sh
