#!/usr/bin/bash
sudo pacman -S plasma kdebase kdeutils kdepim kdesdk okular kf5 kdenetwork digikam gwenview kdeconnect breeze-kde4 plasma5-applets-weather-widget kalgebra cantor marble kaffeine yakuake spectacle ffmpegthumbs partitionmanager kdiff3 kcm-fcitx systemd-kcm fcitx-im fcitx-libpinyin dolphin-plugins kdegraphics-thumbnailers kio-extras && yaourt -S plasma5-applets-places-widget kde-thumbnailer-odf archlinux-themes-sddm && sed -i 's/ibus/fcitx/g' ~/.xprofile && sudo systemctl enable sddm.service
