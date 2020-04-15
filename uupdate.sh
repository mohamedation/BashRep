#!/bin/bash

### update script for ubuntu/debian based distros. 

clear
echo "starting updating process"
apt update
apt upgrade -y
apt dist-upgrade -y
apt clean
apt autoclean
apt autoremove -y

###update youtube-dl
#youtube-dl -U

###update Linux Malware Detect
#maldet -u

###stop, update, and start clamav
#/etc/init.d/clamav-freshclam stop
#freshclam
#/etc/init.d/clamav-freshclam start

###log to a file last update. change to point to the log file.
#echo "Last update:" `date` >> update.log

echo "system is updated"
exit
