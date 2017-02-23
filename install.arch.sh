pacman -Syu 

if [[ !$(which aurget) ]]; then
	pacman -S wget
	wget http://aur.archlinux.org/packages/au/aurget/aurget.tar.gz && \
		tar -xvf ./aurget.tar.gz && \
		cd aurget && makepkg -si --noconfirm
fi
pacman -S mplayer zsh xsel chromium dialog docker jdk8-openjdk i3 emacs maim slop feh 
