#!/bin/sh

# put 'chfilemgr' in $HOME/bin/; and execute this script on startup of DE/WM
if [ "$XDG_SESSION_DESKTOP" == "gnome" ]; then
  $HOME/bin/chfilemgr org.gnome.Nautilus.desktop
elif [ "$XDG_SESSION_DESKTOP" == "KDE" ]; then
  $HOME/bin/chfilemgr org.kde.dolphin.desktop
elif [ "$XDG_SESSION_DESKTOP" == "mate"  ]; then
  $HOME/bin/chfilemgr caja.desktop
else
  # other environment, such as i3, openbox...etc.
  $HOME/bin/chfilemgr Thunar.desktop
fi
