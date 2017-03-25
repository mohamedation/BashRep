#!/bin/bash
image=$(curl $1 | grep 'og:image' | sed 's/<meta property="og:image" content="//g'| sed 's/" \/>//g')
wget -P /home/$USER/Downloads/ $image
