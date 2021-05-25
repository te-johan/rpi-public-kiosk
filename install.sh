#!/bin/bash
apt update
apt upgrade
apt install lightdm
cp .xinitrc /home/pi
cp xorg.conf /etc/X11
cp autostart environment rc.xml menu.xml /home/pi/.config/openbox
