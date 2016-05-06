#!/bin/bash

# I used to install programs like wallch and variety until I decided to use something a little simpler.
# Found on http://www.webupd8.org/2009/11/3-lines-script-to-automatically-change.html and modified to suit my need.
# I use a desktop file placed in '~/.config/autostart' to start the script at login.
# Point the "DIR" to the wallpapers folder and change the "sleep" line to the maximum time between each change (in seconds, so 300 = 5 minutes) 




while [ True ]; do
	DIR="/home/USER/Pictures/Wallpapers"
	PIC=$(ls $DIR/*.jpg | shuf -n1)
	gsettings set org.gnome.desktop.background picture-uri $PIC
	sleep $[($RANDOM % 300)+1]
done
