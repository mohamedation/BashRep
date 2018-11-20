#!/bin/sh
MONITORDIR="/dir/to/monitor/ftp/files/"
inotifywait -m -r -e close_write --format '%w%f' "${MONITORDIR}" | while read NEWFILE
do
        mosquitto_pub -t "security/cctv/front_door" -m "motion" -u "mqtt-username" -P "mqtt-password"
        DATE=`date '+%Y-%m-%d--%H-%M-%S'`
        ffmpeg -i ${NEWFILE} -vf fps=1/3 /dir/to/savefiles/${DATE}%03d.jpg
        convert -quiet -resize 50% -delay 30 /dir/to/savefiles/${DATE}*.jpg -loop 0 -fuzz 10%  -layers optimize /media/rogue/Surveillance/${DATE}.gif
        echo "Motion Detected at ${DATE}" | mutt -s "Motion Detected - ${DATE}" email@email.com -a /dir/to/savefiles/${DATE}.gif
        7z a /dir/to/savefiles/${DATE}.7z /dir/to/savefiles/${DATE}*.jpg /dir/to/savefiles/${DATE}.gif ${NEWFILE}
        rm /dir/to/savefiles/${DATE}*.jpg /dir/to/savefiles/${DATE}.gif

done
