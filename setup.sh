#!/usr/bin/bash

mkdirs=(
  .config
  .sbt/0.13
  bin
)

files=(
  .zshrc
  .sbt/repositories
  bin/difmplay
  .difmplayrc
  .xinitrc
)

dirs=(
  .zsh.d
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

if [[ ! -z "$1" ]] ; then 
  export OUR_USER=$USER;
  sudo bash install.$1.sh
fi

cat <<EOF
Post Installation Notes
=======================

You'll want to do a few things at this point that this script hasn't handled for you.

Stack
-----
If you need haskell, run this (it'll take a while):
stack setup && stack install ghc-mod 

DiFmPlay (Linux Only)
----------------------
Get your premium DI key from http://www.di.fm/settings and put it into $HOME/.difmplay.key !
EOF
