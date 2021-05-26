# rpi-public-kiosk

lock down chromium using openbox configuration.

this repository contains a basic configuration of openbox to provide an locked
environment for public browsing of a website using chromium.

statup.py relies on xscreensaver and when the screensaver is started chromium
is restarted.

chromium can be exited using ctrl + shift + w. when quiting openbox lightdm
will start.

to get access to a terminal it is recommended to install another desktop
environment besides openbox.
