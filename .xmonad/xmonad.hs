-- default desktop configuration for Fedora

import XMonad
import XMonad.Config.Gnome

main = xmonad bensConfig 

bensConfig = gnomeConfig 
  { terminal = "mate-terminal"
  }
