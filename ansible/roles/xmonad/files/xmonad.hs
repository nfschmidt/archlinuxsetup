import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog

baseConfig = desktopConfig

main = xmonad =<< xmobar baseConfig
    { terminal    = "urxvt"
    ,  startupHook = myStartupHook
    }

myStartupHook = do
                spawn "stalonetray"
                spawn "nm-applet"
