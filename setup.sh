#!/usr/bin/bash

mkdirs=(
  .config
  .sbt/0.13
  bin
)

files=(
  .zshrc
  .zpreztorc
  .zlogin
  .zprofile
  .zshenv
  .zlogin
  .zlogout
  .tmux.conf
  .sbt/repositories
  bin/difmplay
  .difmplayrc
)

dirs=(
  .zsh.d
  .xmonad
  .zprezto
  .config/nvim
  .sbt/0.13/plugins
)

for d in ${mkdirs[@]}; do
  mkdir -p $HOME/$d
done

for f in ${files[@]}; do
  ln -sf $(pwd)/$f $HOME/$f
done;

for d in ${dirs[@]}; do
  ln -sf $(pwd)/$d $(dirname $HOME/$d)
done;

ln -sf $(pwd)/extras/vim-plug/plug.vim $HOME/.config/nvim/autoload/plug.vim
ln -sf $(pwd)/sbt-extras/sbt $HOME/bin/sbt

if [[ ! -z "$1" ]] ; then 
  export OUR_USER=$USER;
  if [[ $1 -eq "osx" ]]; then
    bash install.osx.sh
  else 
    sudo bash install.$1.sh
  fi
fi

curl https://raw.githubusercontent.com/n8han/conscript/master/setup.sh | sh
$HOME/bin/cs n8han/giter8

cat <<EOF
Post Installation Notes
=======================

You'll want to do a few things at this point that this script hasn't handled for you.

NeoVim
------
Boot up nvim and run these things
- :PlugInstall
- :UpdateRemotePlugins
- :EsClassPath (if you need scala; this will take a long time)

Stack
-----
If you need haskell, run this (it'll take a while):
stack setup && stack install ghc-mod 

DiFmPlay (Linux Only)
----------------------
Get your premium DI key from http://www.di.fm/settings and put it into $HOME/.difmplay.key !
EOF
