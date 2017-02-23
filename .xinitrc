xrdb merge $HOME/.XResources
feh --bg-scale $(shuf -n1 -e $HOME/desktops/*) --bg-scale $(shuf -n1 -e $HOME/desktops/*)
xcompmgr &
exec i3
