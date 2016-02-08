deps=(
  Caskroom/cask/java
  git-flow-avh 
  zsh 
  mplayershell 
  wget 
  haskell-stack 
  ghc 
  cabal-install 
  scala 
  scalastyle
  neovim/neovim/neovim  
)
for i in ${deps[@]}; do
  brew install $i
done;

sudo easy_install pip
pip install websocket-client neovim

echo "Manual installation"
echo "-------------------"
echo "https://www.docker.com/docker-toolbox"
echo "https://www.google.com/chrome/"
echo "https://github.com/ianyh/Amethyst"
