#!/bin/bash

echo "Changing Wallch indicator icon to mono"

wget https://www.dropbox.com/s/vi7emuehp7krayj/indicator_ambiance_normal.png
sudo cp /usr/share/wallch/files/indicator_ambiance_normal.png /usr/share/wallch/files/indicator_ambiance_normal_original.png
sudo cp indicator_ambiance_normal.png /usr/share/wallch/files/
rm indicator_ambiance_normal.png
echo "Done"
