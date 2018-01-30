#!/bin/sh
printf "\n  "
for i in {0..255} ; do
    colcode="[${i}]"
    printf "\x1b[38;5;${i}m%-10s " $colcode
    if [ $((($i+1) % 8)) = 0 ] ; then
        printf "\n  "
    fi
done
printf "\n"
