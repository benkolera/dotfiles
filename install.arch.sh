pacman -S wget
wget http://aur.archlinux.org/packages/au/aurget/aurget.tar.gz && \
  tar -xvf ./aurget.tar.gz && \
  cd aurget && makepkg -si --noconfirm

pacman -S mplayer zsh xsel chromium dialog docker jdk8-openjdk i3 emacs maim slop
