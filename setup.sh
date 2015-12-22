#!/usr/bin/bash

mkdir -p ~/.config
ln -sf $(pwd)/.zshrc ~/.zshrc
ln -sf $(pwd)/.zsh.d ~/.zsh.d
ln -sf $(pwd)/.tmux.conf ~/.tmux.conf
ln -sf $(pwd)/.config/nvim ~/.config/nvim
ln -sf $(pwd)/extras/vim-plug/plug.vim ~/.config/nvim/autoload/plug.vim
