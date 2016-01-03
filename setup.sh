#!/usr/bin/bash

mkdir -p ~/.config

files=(
  .zshrc
  .zpreztorc
  .zlogin
  .zprofile
  .zshenv
  .zlogin
  .zlogout
  .tmux.conf
)

dirs=(.zsh.d .xmonad .zprezto .config/nvim)

for f in $files; do
  ln -sf $(pwd)/$f $HOME/$f
done;

for d in $dirs; do
  ln -sf $(pwd)/$d $(dirname $HOME/$d)
done;

sh install.$1.sh
