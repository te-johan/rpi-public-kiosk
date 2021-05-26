#!/bin/bash
apt update
apt upgrade
apt install --no-install-recommends xserver-xorg
apt install --no-install-recommends xinit
apt install openbox lxterminal chromium-browser lightdm
apt install xscreensaver xscreensaver-data-extra xscreensaver-gl-extra
cp .xinitrc /home/pi
cp xorg.conf /etc/X11
cp autostart environment rc.xml menu.xml /home/pi/.config/openbox
