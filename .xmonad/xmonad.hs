-- default desktop configuration for Fedora

import XMonad
import XMonad.Config.Desktop

import qualified Data.Map as M

main = xmonad bensConfig 

bensConfig = desktopConfig
  { terminal = "mate-terminal"
  , keys     = bensKeys <+> keys desktopConfig
  }

bensKeys (XConfig {modMask = modm}) = M.fromList $
  [ ((modm, xK_p), spawn "gmrun")
  --, ((modm .|. shiftMask, xK_q), spawn "gnome-session-save --kill") 
  ]
