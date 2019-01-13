#!/bin/sh

uid=`id | sed 's/uid=\([0-9]\+\)(.\+/\1/'`
   
if [ $uid -ne 0 ];then
    echo "error: not root user"
    exit 1
fi

bin_files="ts2enc.pl recordedEnc.sh"
etc_files="ts2enc.ffpreset"
bin_dir="/usr/local/bin"
etc_dir="/usr/local/etc"

chown root:root ${bin_files} ${etc_files}
chmod +x ${bin_files}
mkdir -p ${bin_dir} ${etc_dir}
cp -p ${bin_files} ${bin_dir}
cp -p ${etc_files} ${etc_dir}
