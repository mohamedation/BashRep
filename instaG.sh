#!/bin/bash
for var in "$@"
do
	image=$(curl $var | grep 'og:image' | sed 's/<meta property="og:image" content="//g'| sed 's/" \/>//g')
	wget -P /Dir/to/download $image
done

