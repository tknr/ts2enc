#!/bin/sh

outfile=${1%.*}.mp4
sec=`awk "BEGIN{srand(); print int(rand()*100)%59+1;}"`

until [ ! `pidof -s ffmpeg` ]
do
    sleep ${sec}
done

/usr/local/bin/ts2enc.pl "$1" "${outfile}" > /dev/null 2>&1

exit 0
